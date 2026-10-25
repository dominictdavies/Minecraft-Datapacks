# Size = 2 * items * step + 1, so each item pushes every edge out by step blocks
scoreboard players operation #size item_border = #items item_border
scoreboard players operation #size item_border *= #step item_border
scoreboard players operation #size item_border *= #2 item_border
scoreboard players add #size item_border 1

# Distance = how far the size changes from where the border is right now
execute in minecraft:overworld store result score #distance item_border run worldborder get
scoreboard players operation #distance item_border -= #size item_border
execute if score #distance item_border matches ..-1 run scoreboard players operation #distance item_border *= #-1 item_border

# Time in ticks for the edges to move at step blocks per second (each edge moves half the distance)
scoreboard players operation #time item_border = #distance item_border
scoreboard players operation #time item_border *= #10 item_border
scoreboard players operation #time item_border /= #step item_border

# Apply the new size and time to the border
execute store result storage item_border:data border.size int 1 run scoreboard players get #size item_border
execute store result storage item_border:data border.time int 1 run scoreboard players get #time item_border
function item_border:border/apply_border with storage item_border:data border

# Show everyone the new unique item count
title @a actionbar [{"text":"Unique items: ","color":"gray"},{"score":{"name":"#items","objective":"item_border"},"color":"white"}]
