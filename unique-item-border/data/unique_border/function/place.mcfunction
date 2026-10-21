# Wait at (0, 0) until the chunk is generated, then drop the player on the surface.
execute positioned 0.5 0 0.5 unless loaded ~ ~ ~ run effect give @s minecraft:slow_falling 3 0 true
execute positioned 0.5 0 0.5 unless loaded ~ ~ ~ run return run tp @s 0.5 320 0.5

execute positioned 0.5 0 0.5 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned 0.5 0 0.5 positioned over motion_blocking_no_leaves run setworldspawn ~ ~ ~
execute positioned 0.5 0 0.5 positioned over motion_blocking_no_leaves run spawnpoint @s ~ ~ ~
tag @s add unique_border.placed
