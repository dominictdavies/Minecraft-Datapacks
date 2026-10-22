$execute store success score #new item_border run data modify storage item_border:tmp held."$(id)" set value 1b
scoreboard players operation #items item_border += #new item_border
