$execute unless data storage item_border:data players[{uuid:$(uuid)}] run data modify storage item_border:data players append value {uuid:$(uuid)}
$execute store success score #changed item_border run data modify storage item_border:data players[{uuid:$(uuid)}] set from storage item_border:tmp player
execute if score #changed item_border matches 1 run scoreboard players set #dirty item_border 1
