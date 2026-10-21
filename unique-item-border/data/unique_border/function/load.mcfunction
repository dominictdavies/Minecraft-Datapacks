scoreboard objectives add unique_border dummy
scoreboard objectives add unique_border.hint trigger
function unique_border:all_items
execute unless score #initialized unique_border matches 1 run function unique_border:init
