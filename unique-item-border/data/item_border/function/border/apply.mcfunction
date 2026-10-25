# The overworld border covers blocks -h to h (size 2h + 1), and the nether and end cover an eighth of that, rounded down to whole blocks
scoreboard players operation #scaled_size item_border = #size item_border
scoreboard players operation #scaled_size item_border /= #2 item_border
scoreboard players operation #scaled_size item_border /= #8 item_border
scoreboard players operation #scaled_size item_border *= #2 item_border
scoreboard players add #scaled_size item_border 1

execute store result storage item_border:data border.size int 1 run scoreboard players get #size item_border
execute store result storage item_border:data border.scaled_size int 1 run scoreboard players get #scaled_size item_border
execute store result storage item_border:data border.time int 1 run scoreboard players get #time item_border
function item_border:border/apply_border with storage item_border:data border
