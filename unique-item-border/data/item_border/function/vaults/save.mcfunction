# Overwrite the chest's saved contents, flagging a recount if anything differs
$execute store success score #changed item_border run data modify storage item_border:data vaults[{id:$(id)}].items set from storage item_border:tmp vault
execute if score #changed item_border matches 1 run scoreboard players set #dirty item_border 1
