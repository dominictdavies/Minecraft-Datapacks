# Run the given function at the other half of this double chest, if there is one
$execute if block ~ ~ ~ #item_border:chests[facing=north,type=left] positioned ~1 ~ ~ run function $(run)
$execute if block ~ ~ ~ #item_border:chests[facing=north,type=right] positioned ~-1 ~ ~ run function $(run)
$execute if block ~ ~ ~ #item_border:chests[facing=east,type=left] positioned ~ ~ ~1 run function $(run)
$execute if block ~ ~ ~ #item_border:chests[facing=east,type=right] positioned ~ ~ ~-1 run function $(run)
$execute if block ~ ~ ~ #item_border:chests[facing=south,type=left] positioned ~-1 ~ ~ run function $(run)
$execute if block ~ ~ ~ #item_border:chests[facing=south,type=right] positioned ~1 ~ ~ run function $(run)
$execute if block ~ ~ ~ #item_border:chests[facing=west,type=left] positioned ~ ~ ~-1 run function $(run)
$execute if block ~ ~ ~ #item_border:chests[facing=west,type=right] positioned ~ ~ ~1 run function $(run)
