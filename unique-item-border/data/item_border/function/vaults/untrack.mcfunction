# Remove the marker on the chest here, if there is one
execute as @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/remove with entity @s data
