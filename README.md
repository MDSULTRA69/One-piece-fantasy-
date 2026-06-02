# One Piece Fantasy — API Server

## Deploy on Render

1. Go to https://dashboard.render.com → New → Web Service
2. Upload this zip (or push its contents to a GitHub repo and connect it)
3. Build command: `echo "pre-bundled"`
4. Start command: `node --enable-source-maps ./index.mjs`
5. Set environment variables:
   - `DATABASE_URL` — your PostgreSQL connection string (use Render's free Postgres add-on)
   - `SESSION_SECRET` — any long random string
   - `NODE_ENV` — `production`

## Database

Run the schema migration once after deployment:
```
DATABASE_URL=... pnpm --filter @workspace/db run push
```

## Seed Characters

After the DB schema is ready, seed the full One Piece roster (Elbaf arc, ~Ch. 1150):

```bash
psql $DATABASE_URL < seed_characters.sql
```

This seeds **43 characters** with:
- Accurate alive/dead status (no Ace, Whitebeard, Big Mom, Kaido, Saturn, Stella Vegapunk)
- Relevance-based pricing (Tier S=500 down to Tier D=50)
- Official One Piece Wiki image URLs
- Elbaf arc new characters: Loki, Figarland Shamrock, Jaguar D. Saul

## Scoring System

The scoring engine (`scoreChapterSummary`) uses keyword matching on chapter summaries:
- **10 pts** per mention (aliases handled: "Luffy" = "Monkey D. Luffy")
- **+30 pts** per MAJOR keyword nearby (defeats, devil fruit awakening, death, etc.)
- **+12 pts** per ACTION keyword nearby (fought, used, arrived, etc.)
- **Cap: 300 pts** per character per chapter (raised from 150 to allow dominant chapters to register)

The admin posts a chapter summary text to `POST /api/chapters/:id/score` — this requires authentication.

## Security Notes

- `POST /api/chapters` (create chapter) — requires auth ✅
- `POST /api/chapters/:id/score` — requires auth ✅
- All league/team routes require auth ✅

## CORS

The API allows all origins in production. Restrict in `app.ts` if needed.
