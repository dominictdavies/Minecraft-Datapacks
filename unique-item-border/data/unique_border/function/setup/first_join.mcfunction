execute unless loaded 0 0 0 run advancement revoke @s only unique_border:setup/first_join
execute unless loaded 0 0 0 run effect give @s minecraft:slow_falling 3 0 true
execute unless loaded 0 0 0 run return run tp @s 0.0 320 0.0
execute positioned 0.0 0 0.0 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned 0.0 0 0.0 positioned over motion_blocking_no_leaves run spawnpoint @s ~ ~ ~
