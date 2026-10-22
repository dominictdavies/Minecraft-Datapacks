# Stop tracking if the chest is gone
execute unless block ~ ~ ~ #item_border:chests run return run function item_border:vaults/remove with entity @s data

# If this is half of a double chest, also track the other half
execute if block ~ ~ ~ #item_border:chests[facing=north,type=left] positioned ~1 ~ ~ unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=north,type=right] positioned ~-1 ~ ~ unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=east,type=left] positioned ~ ~ ~1 unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=east,type=right] positioned ~ ~ ~-1 unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=south,type=left] positioned ~-1 ~ ~ unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=south,type=right] positioned ~1 ~ ~ unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=west,type=left] positioned ~ ~ ~-1 unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
execute if block ~ ~ ~ #item_border:chests[facing=west,type=right] positioned ~ ~ ~1 unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add

# Copy the chest's contents, defaulting to empty if it has none yet
data modify storage item_border:tmp vault set value []
data modify storage item_border:tmp vault set from block ~ ~ ~ Items

# Compare with the saved contents and store them
function item_border:vaults/save with entity @s data
