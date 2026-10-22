# Forget the chest's saved contents and flag a recount
$data remove storage item_border:data vaults[{id:$(id)}]
scoreboard players set #dirty item_border 1

# Delete the marker
kill @s
