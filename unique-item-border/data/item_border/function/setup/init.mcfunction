# Mark the world as set up so this only ever runs once
scoreboard players set #initialized item_border 1

# Start with no items, players, tracked chests or completed collections
scoreboard players set #items item_border 0
scoreboard players set #step item_border 1
data modify storage item_border:data players set value []
data modify storage item_border:data vaults set value []
data modify storage item_border:data completed set value {}

# Shrink the border to exactly block (0, 0) and spawn players there
worldborder center 0.5 0.5
worldborder set 1
setworldspawn 0 ~ 0
