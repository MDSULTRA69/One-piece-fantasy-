import pg from "pg";
import { readFileSync } from "fs";
import { fileURLToPath } from "url";
import { dirname, join } from "path";

const { Pool } = pg;

if (!process.env.DATABASE_URL) {
  throw new Error("DATABASE_URL must be set.");
}

const pool = new Pool({ connectionString: process.env.DATABASE_URL });

const __dirname = dirname(fileURLToPath(import.meta.url));

async function migrate() {
  const client = await pool.connect();
  try {
    console.log("Running migrations...");

    await client.query(`
      CREATE TABLE IF NOT EXISTS users (
        id         SERIAL PRIMARY KEY,
        username   TEXT NOT NULL UNIQUE,
        email      TEXT NOT NULL UNIQUE,
        password_hash TEXT NOT NULL,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );

      CREATE TABLE IF NOT EXISTS characters (
        id          SERIAL PRIMARY KEY,
        name        TEXT NOT NULL UNIQUE,
        affiliation TEXT NOT NULL,
        cost        INTEGER NOT NULL DEFAULT 100,
        image_url   TEXT NOT NULL,
        description TEXT NOT NULL DEFAULT '',
        bounty      TEXT,
        created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );

      CREATE TABLE IF NOT EXISTS chapters (
        id             SERIAL PRIMARY KEY,
        chapter_number INTEGER NOT NULL UNIQUE,
        title          TEXT NOT NULL,
        release_date   TEXT NOT NULL,
        summary        TEXT,
        is_picks_locked BOOLEAN NOT NULL DEFAULT FALSE,
        is_scoring_done BOOLEAN NOT NULL DEFAULT FALSE,
        created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );

      CREATE TABLE IF NOT EXISTS leagues (
        id          SERIAL PRIMARY KEY,
        name        TEXT NOT NULL,
        invite_code TEXT NOT NULL UNIQUE,
        created_by  INTEGER NOT NULL,
        description TEXT,
        created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );

      CREATE TABLE IF NOT EXISTS league_members (
        id         SERIAL PRIMARY KEY,
        league_id  INTEGER NOT NULL,
        user_id    INTEGER NOT NULL,
        joined_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );

      CREATE TABLE IF NOT EXISTS teams (
        id           SERIAL PRIMARY KEY,
        user_id      INTEGER NOT NULL,
        chapter_id   INTEGER NOT NULL,
        league_id    INTEGER,
        total_cost   INTEGER NOT NULL DEFAULT 0,
        total_points INTEGER NOT NULL DEFAULT 0,
        created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );

      CREATE TABLE IF NOT EXISTS team_characters (
        id           SERIAL PRIMARY KEY,
        team_id      INTEGER NOT NULL,
        character_id INTEGER NOT NULL
      );

      CREATE TABLE IF NOT EXISTS character_scores (
        id             SERIAL PRIMARY KEY,
        chapter_id     INTEGER NOT NULL,
        character_id   INTEGER NOT NULL,
        points         INTEGER NOT NULL DEFAULT 0,
        ai_explanation TEXT NOT NULL DEFAULT '',
        created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );
    `);

    console.log("Tables created.");

    // Seed characters only if the table is empty
    const { rows } = await client.query("SELECT COUNT(*) FROM characters");
    if (parseInt(rows[0].count, 10) === 0) {
      console.log("Seeding characters...");
      const seed = readFileSync(join(__dirname, "seed_characters.sql"), "utf8");
      await client.query(seed);
      console.log("Characters seeded.");
    } else {
      console.log("Characters already seeded, skipping.");
    }

    console.log("Migration complete.");
  } finally {
    client.release();
    await pool.end();
  }
}

migrate().catch((err) => {
  console.error("Migration failed:", err);
  process.exit(1);
});
