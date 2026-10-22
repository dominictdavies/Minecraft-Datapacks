# Move the player onto the surface of block (0, 0) and make it their respawn point
execute positioned 0.5 0 0.5 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned 0.5 0 0.5 positioned over motion_blocking_no_leaves run spawnpoint @s ~ ~ ~
