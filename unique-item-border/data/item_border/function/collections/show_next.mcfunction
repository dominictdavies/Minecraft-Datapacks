# Stop once every collection has been shown
execute unless data storage item_border:tmp shown[0] run return 0

# Show the first collection, remove it, then repeat with the rest
function item_border:collections/show_line with storage item_border:tmp shown[0]
data remove storage item_border:tmp shown[0]
function item_border:collections/show_next
