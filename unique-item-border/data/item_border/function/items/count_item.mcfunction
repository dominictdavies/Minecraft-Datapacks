# Mark this item ID as held, adding 1 to the count only if it wasn't already marked
$execute store success score #new item_border run data modify storage item_border:tmp held."$(id)" set value 1b
scoreboard players operation #items item_border += #new item_border
