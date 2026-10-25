# Check whether either half of the chest is already tracked
scoreboard players set #tracked item_border 0
function item_border:vaults/check_tracked
function item_border:vaults/at_partner {run:"item_border:vaults/check_tracked"}

# If it is, stop tracking it instead
execute if score #tracked item_border matches 1 run return run function item_border:vaults/unregister

# Start tracking the chest and tell the player
function item_border:vaults/add
tellraw @s {"text":"Chest tracked","color":"green"}
