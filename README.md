# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King's Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

## July 20 repair + 26-level board-layout push

This scheduled pass fixes the current `index.html` regression and makes levels feel more meaningfully different.

- Repaired `index.html` by replacing the corrupted entrypoint with the complete playable game.
- Synced `index.html` and `save-the-king-match3.html` to identical content.
- Expanded the campaign from **24 to 26 rescue levels**.
- Added **Crystal Elevator**, a shattering lift rescue with 🔑 Key and 🛡️ Shield goals.
- Added **Ogre Dam**, a flood-dam rescue with 🪢 Rope and 🔨 Hammer goals.
- Added true **distinct board layouts** with unplayable holes/gaps that vary by rescue scene: center pits, flooded corners, diagonal cave-ins, split bridges, snake tunnels, cracked crosses, tower corners, honeycomb gaps, rail mazes, library aisles, harbor piers, crystal elevator shafts, and dam spillways.
- The **Nightmare Briefing** now calls out the current board shape so the level constraint is readable before playing.
- Match detection, swaps, Royal Tools, hazard surges, and blockers now respect board holes.
- Added smoke-test fields: `hasTwentySixLevelCampaign`, `hasCrystalOgreScenes`, `hasDistinctBoardLayouts`, `shape`, and `holes`.

## Previous July 19 distinct board-layout upgrade

This scheduled pass focused on making levels feel less like relabeled versions of the same board.

- Added **distinct board layouts** with unplayable holes/gaps that vary by rescue scene.
- The **Nightmare Briefing** calls out the current level’s board shape alongside the hazard surge.
- Kept the 24-level campaign, Mirror Maze, Volcano Mine, Royal Streak milestones, Villain Cut-In, Crown Cannon, Royal Tools, hazard surges, pin panels, map progression, and stars.

## Controls

Tap two adjacent tiles to swap. Match glowing goal tiles to complete each rescue objective. Use Royal Tools when stuck, build Royal Streak milestones with clean clears, and charge the Crown Cannon to blast locks, goals, blockers, and villain pressure. Watch the warning banner: every few moves the current hazard surges and fights back.
