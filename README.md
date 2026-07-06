# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King’s Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

## July 6 huge campaign upgrade

This scheduled pass makes the prototype feel more substantial:

- Expanded the playable campaign to **12 distinct rescue levels**.
- Added two new late-game rescue fantasies: **Ghost Library** and **Whirlpool Harbor**.
- Reworked each scene around obvious ad-style beats: king in danger, goals cleared, trap opened, escape ready.
- Preserved functional rescue systems: match-4 rockets, match-5 rainbow clears, hazard surges, one-use Royal Tools, locked rescue panels, blockers, map progression, and stars.
- Added safer late-game board layouts so new levels have different hole patterns instead of feeling like label swaps.
- `window.__gameTest` reports 12 levels, `hasCampaignExpansion`, `hasFunctionalPowerUps`, `hasRoyalTools`, `hasHazardSurge`, and `hasCinematicMission` for hosted smoke checks.

Reference inspiration: Royal Match / King’s Nightmare ads work best when each scene is a new peril fantasy — flooding, fire, dragon traps, haunted rooms, whirlpools, falling hazards — with the king visibly trapped and the rescue steps immediately obvious.

## Controls

Tap two adjacent tiles to swap. Match glowing goal tiles to complete each rescue objective. Match-4 creates rockets, match-5 creates rainbow clears, and Royal Tools give one-use help when a level is close to failure. Watch the warning banner: every few moves the current hazard surges and changes the board or re-locks part of the rescue path.
