# Flag the other half as unloaded so its contents aren't treated as gone
execute unless loaded ~ ~ ~ run return run scoreboard players set #partner_unloaded item_border 1

# Add the other half's contents to this chest's snapshot
data modify storage item_border:tmp vault append from block ~ ~ ~ Items[]
