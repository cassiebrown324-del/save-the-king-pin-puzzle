# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King’s Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

## July 11 publish repair + control polish

This pass focuses on making the previously local-only upgrade actually playable from a cache-busted link.

- Published the repaired complete entrypoint over the incomplete `main` build.
- Kept the **16-level campaign** with Clockwork Dungeon and Final Crown Siege.
- Kept the **👑 Crown Cannon** meta-power and made the rescue-beats panel call it out more clearly.
- Fixed the inline Reset/Next controls so the standalone static page can advance reliably after a forced or normal win.
- Synced `index.html` and `save-the-king-match3.html`.

## July 7 late-game peril expansion

This scheduled pass adds a more visible late-campaign ramp inspired by Royal Match / King’s Nightmare ads where the king is trapped in a single obvious peril scene with clear move pressure:

- Expanded the campaign from **12 to 14 rescue levels**.
- Added **Mummy Tomb**, a sand-filling chamber with tomb seals, metal blockers, keys, and hammers.
- Added **Storm Balcony**, a lightning-tower rescue with rope conductors, shield goals, vine blockers, and charged rods.
- Added new sand and storm danger visuals so the final levels do not feel like relabeled earlier boards.
- `window.__gameTest` now exposes `hasFourteenLevelCampaign` and `hasNewSandStormScenes` for smoke checks.

## Controls

Tap two adjacent tiles to swap. Match glowing goal tiles to complete each rescue objective. Match-4 creates rockets, match-5 creates rainbow clears, and Royal Tools give one-use help when a level is close to failure. Watch the warning banner: every few moves the current hazard surges and changes the board or re-locks part of the rescue path. Charge the Crown Cannon by completing rescue goals, then fire it to break locks, goals, and blockers.
