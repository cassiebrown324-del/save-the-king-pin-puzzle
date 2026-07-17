# Save the King — Royal Rescue Match

Playable match-3 rescue prototype inspired by Royal Match / King's Nightmare rescue ads.

## Play

- GitHub Pages: https://cassiebrown324-del.github.io/save-the-king-pin-puzzle/
- Cache-busted/raw build links are provided after each commit.

## July 17 villain cut-in + 22-level campaign upgrade

This pass focuses on making the prototype feel substantially more like the Royal Match / King’s Nightmare ad fantasy: the king is visibly in trouble, a villain or hazard pushes back, and the player has a clear counterplay loop.

- Expanded the campaign from **20 to 22 rescue levels**.
- Added **Acid Laboratory**, a poison-vat scene where players neutralize acid valves with 💧 Water and 🛡️ Shield goals before acid spreads.
- Added **Meteor Observatory**, a collapsing star-dome scene where players cool meteor shields with 💧 Water and 🔑 Keys before meteors crack the roof.
- Added a visible **😈 Villain Cut-In** strip that names the scene boss/hazard, tracks pressure, and explains how surges fight back.
- Crown Cannon now knocks villain pressure back when fired, making it feel more like a rescue counterattack instead of only a progress button.
- Kept Nightmare Briefing, Rescue Director, Royal Streak, Crown Cannon, Royal Tools, rockets/rainbows, hazard surges, pin panels, map progression, and stars.
- Synced both playable entrypoints: `index.html` and `save-the-king-match3.html`.

## July 16 boss-scene campaign push

This scheduled pass keeps the game as a standalone static HTML build and makes the late campaign feel bigger and less repetitive.

- Expanded the campaign from **18 to 20 rescue levels**.
- Added **Golem Forge**, a molten-chain forge rescue where 💧 Water and 🔨 Hammer goals cool/break chains while the golem hurls anvils.
- Added **Pirate Cannon Deck**, a cannonball deck rescue where 🪢 Rope and 🛡️ Shield goals cut fuses and protect the king from sinking-deck hazards.
- Kept the full rescue structure: Nightmare Briefing, Rescue Director, Royal Streak, Crown Cannon, Royal Tools, rockets/rainbows, hazard surges, pin panels, map progression, and stars.
- Synced both playable entrypoints: `index.html` and `save-the-king-match3.html`.
- `window.__gameTest` exposes `hasTwentyLevelCampaign` and `hasForgePirateScenes` for hosted smoke checks.

Reference direction: Royal Match / King's Nightmare-style ads where the king is visibly trapped in escalating, immediately readable peril scenes — lava, floods, fire, monsters, cannonballs, and locked escape mechanisms.

## Controls

Tap two adjacent tiles to swap. Match glowing goal tiles to complete each rescue objective. Match-4 creates rockets, match-5 creates rainbow clears, and Royal Tools give one-use help when a level is close to failure. Watch the warning banner: every few moves the current hazard surges and changes the board or re-locks part of the rescue path. Charge the Crown Cannon by making objective and lock progress, then fire it to break through a stuck rescue.
