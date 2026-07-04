# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King's Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

## July 3 power-up rescue push

This scheduled pass makes the match-3 core feel more like a real rescue game instead of only counters changing:

- Rebuilt the published single-file game into a tighter, more reliable 10-level campaign build.
- Made match-4 **rocket** power-ups functional: triggering one blasts a full row or column, breaks blockers, collects goals, and can open visible rescue locks.
- Made match-5 **rainbow** power-ups functional: triggering one clears every tile of that color for a larger rescue burst.
- Kept the visible **KING TRAPPED / ESCAPE OPEN** pin panel and one-use **Royal Tools**: Royal Hammer, Water Splash, and Key Ring.
- Preserved distinct rescue scenes: lava, flood, kitchen fire, frozen throne, dragon bridge, snake pit, saw trap, tower crush, bee swarm, and mine cart collapse.
- `window.__gameTest` reports `hasFunctionalPowerUps`, `hasRoyalTools`, `hasPinPanel`, and 10 levels for hosted smoke checks.

Reference inspiration: Royal Match / King's Nightmare ads rely on obvious heroic board moments — rockets, big clears, and visible lock progress — to make the rescue feel satisfying immediately.


## July 4 cinematic rescue push

This scheduled pass makes each level feel closer to the rescue ads instead of only a match board with counters:

- Added an in-scene **AD-RESCUE BEATS** panel beside the trapped king.
- Every level now tracks three visible rescue beats: king in danger, scene goals cleared, and the level-specific trap opened.
- Added a rising peril bar so moves spent feel connected to the visible danger fantasy.
- Kept the existing 10-level campaign, Royal Tools, hazard surges, pin panels, functional rockets, and rainbow clears.
- `window.__gameTest` now reports `hasCinematicMission` for hosted smoke checks.

Reference inspiration: King’s Nightmare / Royal Match ad scenes work because players instantly understand the peril, the rescue steps, and the final escape. This pass makes that structure visible inside every level.

## Controls

Tap two adjacent tiles to swap. Match glowing goal tiles to complete each rescue objective. Match-4 creates rockets, match-5 creates rainbow clears, and the Royal Tools give one-use rescue help when a level is close to failure. Watch the warning banner: every few moves the current hazard surges and changes the board or re-locks part of the rescue path.
