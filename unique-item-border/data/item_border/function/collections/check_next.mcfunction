# Stop once every collection has been checked
execute unless data storage item_border:tmp collections[0] run return 0

# Check the first collection, remove it, then repeat with the rest
function item_border:collections/check with storage item_border:tmp collections[0]
data remove storage item_border:tmp collections[0]
function item_border:collections/check_next
