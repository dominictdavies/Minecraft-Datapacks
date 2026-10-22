# Stop tracking both halves of the chest and tell the player
function item_border:vaults/at_partner {run:"item_border:vaults/untrack"}
function item_border:vaults/untrack
tellraw @s {"text":"Chest no longer tracked","color":"gray"}
