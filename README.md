# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King's Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

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
