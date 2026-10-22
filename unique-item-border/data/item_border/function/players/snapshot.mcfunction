data modify storage item_border:tmp entity set from entity @s
data modify storage item_border:tmp player set value {items:[]}
data modify storage item_border:tmp player.uuid set from storage item_border:tmp entity.UUID
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.Inventory[]
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.EnderItems[]
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.head
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.chest
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.legs
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.feet
data modify storage item_border:tmp player.items append from storage item_border:tmp entity.equipment.offhand
function item_border:players/save with storage item_border:tmp player
