# Stop tracking if the chest is gone
execute unless block ~ ~ ~ #item_border:chests run return run function item_border:vaults/remove with entity @s data

# If this is half of a double chest, also track the other half
function item_border:vaults/at_partner {run:"item_border:vaults/add_if_untracked"}

# Copy the chest's contents, defaulting to empty if it has none yet
data modify storage item_border:tmp vault set value []
data modify storage item_border:tmp vault set from block ~ ~ ~ Items

# Compare with the saved contents and store them
function item_border:vaults/save with entity @s data
