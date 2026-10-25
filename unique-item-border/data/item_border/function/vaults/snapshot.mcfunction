# Stop tracking if the chest is gone
execute unless block ~ ~ ~ #item_border:chests run return run function item_border:vaults/remove with entity @s data

# Copy the chest's contents, defaulting to empty if it has none yet
data modify storage item_border:tmp vault set value []
data modify storage item_border:tmp vault set from block ~ ~ ~ Items

# Add the other half's contents if this is a double chest, skipping this tick if that half isn't loaded
scoreboard players set #partner_unloaded item_border 0
function item_border:vaults/at_partner {run:"item_border:vaults/add_partner_items"}
execute if score #partner_unloaded item_border matches 1 run return 0

# Compare with the saved contents and store them
function item_border:vaults/save with entity @s data
