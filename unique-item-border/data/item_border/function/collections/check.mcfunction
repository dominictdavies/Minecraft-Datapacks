# Skip collections that were already completed
$execute if data storage item_border:data completed."$(name)" run return 0

# Assume it's complete until an item is found missing
scoreboard players set #complete item_border 1
data modify storage item_border:tmp needed set from storage item_border:tmp collections[0].items
function item_border:collections/check_items

# Reward the collection if nothing was missing
$execute if score #complete item_border matches 1 run function item_border:collections/complete {name:"$(name)"}
