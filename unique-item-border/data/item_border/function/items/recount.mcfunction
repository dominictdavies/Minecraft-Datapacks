scoreboard players set #dirty item_border 0
data modify storage item_border:tmp items set value []
data modify storage item_border:tmp items append from storage item_border:data players[].items[]
data modify storage item_border:tmp items append from storage item_border:data vaults[].items[]
data modify storage item_border:tmp held set value {}
scoreboard players operation #previous item_border = #items item_border
scoreboard players set #items item_border 0
function item_border:items/count
execute unless score #items item_border = #previous item_border run function item_border:border/update
