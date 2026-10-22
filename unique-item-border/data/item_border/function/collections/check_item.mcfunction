# Mark the collection incomplete if this item isn't held
$execute unless data storage item_border:tmp held."$(id)" run scoreboard players set #complete item_border 0
