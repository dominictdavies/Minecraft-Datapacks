# Clear the flag so this only runs again after another change
scoreboard players set #dirty item_border 0

# Gather every saved item from all players and tracked chests into one list
data modify storage item_border:tmp items set value []
data modify storage item_border:tmp items append from storage item_border:data players[].items[]
data modify storage item_border:tmp items append from storage item_border:data vaults[].items[]

# Count the unique item IDs in that list, remembering the old count and step
data modify storage item_border:tmp held set value {}
scoreboard players operation #previous item_border = #items item_border
scoreboard players operation #previous_step item_border = #step item_border
scoreboard players set #items item_border 0
function item_border:items/count

# Check whether any new collections are now complete
function item_border:collections/check_all

# Only resize the border if the count or step actually changed
execute unless score #items item_border = #previous item_border run return run function item_border:border/update
execute unless score #step item_border = #previous_step item_border run function item_border:border/update
