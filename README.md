# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King’s Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

## July 15 late-game peril expansion

Today's scheduled pass adds a clearer late-game difficulty ramp inspired by Royal Match / King’s Nightmare rescue ads where the king is trapped in a new obvious peril scene and the board objectives directly match the rescue fantasy.

- Expanded the campaign from **16 to 18 rescue levels**.
- Added **Avalanche Lodge**, an ice/snow rescue where players melt snowdrift locks with 🔥 Fire and 🪢 Rope before the lodge is buried.
- Added **Kraken Reef**, a flooded sea rescue where players raise anchors with 🔑 Keys and protect the king with 🛡️ Shields before tentacles drag him under.
- Kept the Nightmare Briefing, Rescue Director, Royal Streak, Crown Cannon, Royal Tools, rockets/rainbows, hazard surges, pin panels, map progression, and stars.
- Synced both playable entrypoints: `index.html` and `save-the-king-match3.html`.
- `window.__gameTest` now exposes `hasEighteenLevelCampaign` and `hasAvalancheKrakenScenes` for hosted smoke checks.

## Controls

Tap two adjacent tiles to swap. Match glowing goal tiles to complete each rescue objective. Match-4 creates rockets, match-5 creates rainbow clears, and Royal Tools give one-use help when a level is close to failure. Watch the warning banner: every few moves the current hazard surges and changes the board or re-locks part of the rescue path. Build Royal Streaks with consecutive successful clears and charge the Crown Cannon to break through stuck rescues.
