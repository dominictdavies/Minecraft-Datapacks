execute unless block ~ ~ ~ #item_border:chests run return run function item_border:vaults/remove with entity @s data
execute if block ~ ~ ~ #item_border:chests[facing=north,type=left] positioned ~1 ~ ~ unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=north,type=right] positioned ~-1 ~ ~ unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=east,type=left] positioned ~ ~ ~1 unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=east,type=right] positioned ~ ~ ~-1 unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=south,type=left] positioned ~-1 ~ ~ unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=south,type=right] positioned ~1 ~ ~ unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=west,type=left] positioned ~ ~ ~-1 unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=west,type=right] positioned ~ ~ ~1 unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
data modify storage item_border:tmp vault set value []
data modify storage item_border:tmp vault set from block ~ ~ ~ Items
function item_border:vaults/save with entity @s data
