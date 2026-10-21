# Check each inventory slot in turn.
execute unless data storage unique_border:tmp inventory[0] run return 0
function unique_border:check with storage unique_border:tmp inventory[0]
data remove storage unique_border:tmp inventory[0]
function unique_border:scan
