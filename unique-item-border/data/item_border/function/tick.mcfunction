# Snapshot every online player and every loaded tracked chest
execute as @a run function item_border:players/snapshot
execute as @e[type=marker,tag=item_border.vault] at @s run function item_border:vaults/snapshot

# Recount unique items if any snapshot changed
execute if score #dirty item_border matches 1 run function item_border:items/recount
