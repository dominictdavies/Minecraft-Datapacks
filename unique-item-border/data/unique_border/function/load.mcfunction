scoreboard objectives add unique_border dummy
execute unless score #initialized unique_border matches 1 run function unique_border:init
