# Create a saved entry for this player if they don't have one yet
$execute unless data storage item_border:data players[{uuid:$(uuid)}] run data modify storage item_border:data players append value {uuid:$(uuid)}

# Overwrite the saved entry with the new snapshot, flagging a recount if anything differs
$execute store success score #changed item_border run data modify storage item_border:data players[{uuid:$(uuid)}] set from storage item_border:tmp player
execute if score #changed item_border matches 1 run scoreboard players set #dirty item_border 1
