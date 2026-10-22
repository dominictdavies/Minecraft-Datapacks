# If this point is inside a chest, register it at the chest's center and stop
execute if block ~ ~ ~ #item_border:chests align xyz positioned ~0.5 ~0.5 ~0.5 run return run function item_border:vaults/register

# Otherwise step 0.1 blocks further, until out of steps
scoreboard players remove #steps item_border 1
execute if score #steps item_border matches 1.. positioned ^ ^ ^0.1 run function item_border:vaults/raycast
