# If the chest is already tracked, stop tracking it instead
execute if entity @e[type=marker,tag=item_border.vault,distance=..0.5] run return run function item_border:vaults/unregister

# Start tracking the chest and tell the player
function item_border:vaults/add
tellraw @s {"text":"Chest tracked","color":"green"}
