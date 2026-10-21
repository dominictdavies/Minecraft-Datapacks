execute unless data storage unique_border:tmp all[0] run return 0
data modify storage unique_border:tmp cur.id set from storage unique_border:tmp all[0]
function unique_border:hint_filter_item with storage unique_border:tmp cur
data remove storage unique_border:tmp all[0]
function unique_border:hint_filter
