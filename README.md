# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King's Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

## June 28 published campaign push

This pass publishes the larger ad-style rescue campaign build so the playable link reflects a substantial upgrade, not just local edits:

- Preserves the 10-level campaign expansion with Bee Swarm Garden and Mine Cart Collapse as distinct late-game rescues.
- Keeps the large in-scene objective cards, lock-mechanic cards, power-ups, blockers, level map, stars, coins, danger meter, and rescue meter in the live build.
- Uses the Old Cynic / Royal Match King's Nightmare reference idea that the most compelling ad scenes are obvious peril rescues: dragon escape, kitchen fire, flooding, and other clear hazards.

## June 25 campaign expansion

This pass pushes the prototype beyond the first campaign by adding two new later-stage rescue scenes with distinct hazards, boards, and objectives inspired by ad-style King's Nightmare rescues where the king is trapped in obvious danger:

- Expanded the campaign from 8 to **10 rescue levels**.
- Added **Bee Swarm Garden**: a honeycomb-shaped board, animated bee swarms, vine/crate blockers, and 💧 WATER + 🛡️ SHIELD objectives to calm swarms and protect the king.
- Added **Mine Cart Collapse**: a rail-maze board, metal/gear blockers, falling boulders, and 🔨 HAMMER + 🔑 KEY objectives to repair rail switches before the cart is crushed.
- Updated the map, HUD, final campaign win text, scene emojis, lock labels, and test hook level count to handle the larger 10-level campaign.

## June 24 clarity upgrade

This pass makes the rescue goals much more readable in the ad-style danger scene:

- Added large in-scene objective cards with icon, label, count, and progress bar for every active rescue goal.
- Added a separate card for each level's special lock mechanic: drain valves, stove fires, ice seals, bridge planks, venom cages, saw controls, and ceiling pins.
- The rescue meter now uses true combined progress across goal tiles plus lock mechanics instead of a rough estimate.
- `window.__gameTest` now reports `hasObjectiveCards`, `goalStart`, and `lockStart` for smoke checks.

## June 23 huge upgrade

This is no longer just a thin match-3 board. The latest build adds a fuller playable ad-game campaign:

- 8 distinct rescue levels: Lava Drop, Flooded Cellar, Kitchen Fire, Frozen Throne, Dragon Bridge, Snake Pit, Saw Trap, and Tower Crush.
- A level map with unlock progression and saved stars via `localStorage`.
- Scene-specific visible danger panels: lava, rising floodwater, stove fires, ice prison, dragon bridge, snakes, saw gears, and crushing ceiling pins.
- Real level-specific objectives with visible locks/counters, not just renamed levels.
- Match-4 and match-5 power-ups: row/column rockets and rainbow-style clears.
- Breakable blockers: crates, ice, vines, and metal/gear blockers.
- Distinct board shapes with holes/obstacles per level.
- Stronger feedback: screen shake, particles, goal flashes, floating scoring text, coins, stars, danger meter, and rescue meter.
- `window.__gameTest` hook for smoke verification of levels, power-ups, map, and force-win progression.

## Controls

Swipe/drag adjacent tiles, or tap two adjacent tiles. Match glowing GOAL tiles to complete each rescue objective before the danger reaches the king.
