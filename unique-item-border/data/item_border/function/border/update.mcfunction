# Size = 2 * items + 1, so each item pushes every edge out by one block
scoreboard players operation #size item_border = #items item_border
scoreboard players operation #size item_border += #items item_border
scoreboard players add #size item_border 1

# Apply the new size to the border
execute store result storage item_border:data border.size int 1 run scoreboard players get #size item_border
function item_border:border/apply_border with storage item_border:data border

# Show everyone the new unique item count
title @a actionbar [{"text":"Unique items: ","color":"gray"},{"score":{"name":"#items","objective":"item_border"},"color":"white"}]
