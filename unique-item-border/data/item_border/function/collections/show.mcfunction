# Reset the trigger so this only runs once per use
scoreboard players set @s item_border.collections 0

# List every collection and whether it's been completed
tellraw @s {"text":"Collections:","color":"gold"}
data modify storage item_border:tmp shown set from storage item_border:data collections
function item_border:collections/show_next
