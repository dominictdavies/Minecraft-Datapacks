execute if score #picks unique_border matches ..0 run return 0
execute if score #pool unique_border matches ..0 run return 0
scoreboard players remove #picks unique_border 1
scoreboard players remove #pool unique_border 1
execute store result storage unique_border:tmp pick.max int 1 run scoreboard players get #pool unique_border
function unique_border:hint_roll with storage unique_border:tmp pick
function unique_border:hint_pick
