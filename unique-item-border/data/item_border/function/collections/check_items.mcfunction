# Stop once every item is checked or one is found missing
execute unless data storage item_border:tmp needed[0] run return 0
execute if score #complete item_border matches 0 run return 0

# Check the first item, remove it, then repeat with the rest
data modify storage item_border:tmp needed_item.id set from storage item_border:tmp needed[0]
function item_border:collections/check_item with storage item_border:tmp needed_item
data remove storage item_border:tmp needed[0]
function item_border:collections/check_items
