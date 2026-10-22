execute if entity @e[type=marker,tag=item_border.vault,distance=..0.5] run return run tellraw @s {"text":"This chest is already tracked","color":"gray"}
function item_border:vaults/add
tellraw @s {"text":"Chest tracked","color":"green"}
