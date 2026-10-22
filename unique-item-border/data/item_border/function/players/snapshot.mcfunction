# Copy the player's data once, so it isn't re-read for every field below
data modify storage item_border:tmp entity set from entity @s

# Start a snapshot holding the player's UUID and an empty item list
data modify storage item_border:tmp player set value {items:[]}
data modify storage item_border:tmp player.uuid set from storage item_border:tmp entity.UUID

# Add the inventory and ender chest contents
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.Inventory[]
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.EnderItems[]

# Add worn armor and the offhand item
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.head
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.chest
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.legs
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.feet
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.offhand

# Compare the snapshot with the saved one and store it
function item_border:players/save with storage item_border:tmp player
