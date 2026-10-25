# Create the scoreboard for the pack's numbers, and the collections trigger
scoreboard objectives add item_border dummy
scoreboard objectives add item_border.collections trigger

# Constants used for maths
scoreboard players set #-1 item_border -1
scoreboard players set #2 item_border 2
scoreboard players set #10 item_border 10

# Set up the world the first time the pack loads
execute unless score #initialized item_border matches 1 run function item_border:setup/init

# Start the step at 1 in worlds made before collections existed
execute unless score #step item_border matches 1.. run scoreboard players set #step item_border 1

# Load the collection lists, so edits take effect on reload
function item_border:collections/define

# Recount on every load in case anything changed while the pack was off
scoreboard players set #dirty item_border 1

# Match the nether and end borders to the overworld one, for worlds made before each dimension had its own border
execute in minecraft:the_nether run worldborder center 0.5 0.5
execute in minecraft:the_end run worldborder center 0.5 0.5
execute in minecraft:overworld store result storage item_border:data border.size int 1 run worldborder get
data modify storage item_border:data border.time set value 0
function item_border:border/apply_border with storage item_border:data border
