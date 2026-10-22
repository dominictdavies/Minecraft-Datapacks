scoreboard objectives add item_border dummy
execute unless score #initialized item_border matches 1 run function item_border:setup/init
scoreboard players set #dirty item_border 1
