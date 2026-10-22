scoreboard players add #items item_border 1
execute store result storage item_border:data border.time int 20 run scoreboard players get #items item_border
execute store result storage item_border:data border.size int 4 run scoreboard players get #items item_border
function item_border:border/apply_border with storage item_border:data border
