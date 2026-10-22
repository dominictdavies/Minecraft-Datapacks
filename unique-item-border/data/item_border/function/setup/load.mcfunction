# Create the scoreboard that holds all of the pack's numbers
scoreboard objectives add item_border dummy

# Set up the world the first time the pack loads
execute unless score #initialized item_border matches 1 run function item_border:setup/init

# Recount on every load in case anything changed while the pack was off
scoreboard players set #dirty item_border 1
