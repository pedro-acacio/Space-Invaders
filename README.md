# Space Invaders (Jesus vs. Demons theme)

A clone of the classic Space Invaders made in the Godot Engine, with a themed twist: the player controls "Jesus", who moves horizontally and shoots crosses upward at rows of demons ("djabo") that descend and advance sideways. The demons fight back by shooting fireballs at the player. Every so often a bonus sheep crosses the screen, worth more points than a demon. When hit by a fireball, the game switches to the Game Over screen, with a button to restart the match.

## Main mechanics

- Sideways player movement with the arrow keys (`ui_left`/`ui_right`) and shooting with the space bar (`shoot`), with a timer-controlled cooldown.
- A grid of demons that moves as a block, periodically moves down and randomly fires at the player.
- Bonus sheep that cross the screen at random intervals.
- Scoring: 100 points per demon killed, 500 per sheep.
- Sound effects (shot, explosion, invader killed) and an Atari-style font.

## Technologies

- Godot Engine 4.4 (GDScript)
- Original sprites and sound effects (`Sprites/` and `sfx/` folders)

## How to run

1. Open the project folder in Godot Engine 4.4 (or a compatible version).
2. Run the main scene `cenas/main.tscn` (set as the startup scene in `project.godot`).
