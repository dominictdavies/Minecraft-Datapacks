# Stop once every item has been counted
execute unless data storage item_border:tmp items[0] run return 0

# Count the first item, remove it, then repeat with the rest
function item_border:items/count_item with storage item_border:tmp items[0]
data remove storage item_border:tmp items[0]
function item_border:items/count
