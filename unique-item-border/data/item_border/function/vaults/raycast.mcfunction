execute if block ~ ~ ~ #item_border:chests align xyz positioned ~0.5 ~0.5 ~0.5 run return run function item_border:vaults/register
scoreboard players remove #steps item_border 1
execute if score #steps item_border matches 1.. positioned ^ ^ ^0.1 run function item_border:vaults/raycast
