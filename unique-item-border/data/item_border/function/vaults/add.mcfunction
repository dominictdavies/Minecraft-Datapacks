scoreboard players add #next_vault item_border 1
summon minecraft:marker ~ ~ ~ {Tags:["item_border.vault","item_border.new"]}
execute store result entity @e[type=marker,tag=item_border.new,limit=1] data.id int 1 run scoreboard players get #next_vault item_border
tag @e[type=marker,tag=item_border.new] remove item_border.new
data modify storage item_border:data vaults append value {items:[]}
execute store result storage item_border:data vaults[-1].id int 1 run scoreboard players get #next_vault item_border
scoreboard players set #dirty item_border 1
