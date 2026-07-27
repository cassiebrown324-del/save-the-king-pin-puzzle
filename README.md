# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King’s Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

## July 23 — Quicksand/Laser late-game expansion

This scheduled pass keeps the Royal Match / King’s Nightmare rescue-ad direction focused on obvious peril and distinct late-game scenes.

- Expanded the campaign from **26 to 28 rescue levels**.
- Added **Quicksand Courtyard**, where rope and shield goals anchor the king before quicksand opens sinkholes.
- Added **Laser Treasury**, where key and shield goals redirect laser relays before beams cut off the escape path.
- Kept distinct board layouts, Nightmare Briefing, Rescue Director, Villain Cut-In, Royal Streak milestones, Crown Cannon, Royal Tools, hazard surges, pin panels, map progression, and stars.
- Synced `index.html` and `save-the-king-match3.html`.

## Controls

Tap two adjacent tiles to swap. Match glowing goal tiles to complete each rescue objective. Every few moves the hazard surges, adding pressure or blockers. Use Royal Tools, streak milestones, and the Crown Cannon to save the king before the trap closes.

## July 25 — Dragon Bridge flame-lane showdown

- Dragon Bridge telegraphs a numbered board row before each breath.
- Every third successful turn, the dragon scorches that row and may burn a repaired plank.
- Matching Shield tiles builds guard; 3 guard blocks the next breath.
- Added deterministic Dragon Bridge smoke-test hooks.

## July 26 — Flooded Cellar rising-water rescue

- Flooded Cellar now has a live waterline that rises after every action and visibly threatens the king.
- Matching 💧 Water pumps the cellar down; matching 🔑 Keys opens drain valves and drops the water faster.
- Flood surges can reseal one opened valve, and reaching 100% water immediately loses the rescue.
- Added animated bubbles, flood percentage, valves-locked counter, pumped-water total, and deterministic flood test hooks.

## July 27 — Frozen Throne blizzard rescue

- Made Level 4 **Frozen Throne** a distinct escalating rescue instead of a relabeled board.
- Added a visible frost meter that rises after every successful move and freezes the king at 100%.
- Matching 🔥 Fire tiles and cracking fire-powered ice seals now actively melt the frost.
- Blizzard surges add a large frost spike, reseal one ice seal, and freeze two board spaces.
- Added frosted-board telegraphs, blizzard counters, melt totals, loss feedback, and deterministic `window.__gameTest` hooks.
- Inspired by King's Nightmare's clear ad-style formula: the king is visibly threatened, the move limit matters, and thematic goal tiles directly counter the danger.
