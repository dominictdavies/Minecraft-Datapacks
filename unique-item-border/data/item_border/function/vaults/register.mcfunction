# Don't track the same chest twice
execute if entity @e[type=marker,tag=item_border.vault,distance=..0.5] run return run tellraw @s {"text":"This chest is already tracked","color":"gray"}

# Start tracking the chest and tell the player
function item_border:vaults/add
tellraw @s {"text":"Chest tracked","color":"green"}
