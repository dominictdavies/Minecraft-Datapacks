scoreboard players add #items unique_border 1
execute store result storage unique_border:data border.time int 1 run scoreboard players get #items unique_border
execute store result storage unique_border:data border.size int 4 run scoreboard players add #items unique_border 1
scoreboard players remove #items unique_border 1
function unique_border:apply_border with storage unique_border:data border
