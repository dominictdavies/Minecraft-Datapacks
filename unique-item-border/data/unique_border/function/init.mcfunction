# Runs once per world.
scoreboard players set #initialized unique_border 1
scoreboard players set #items unique_border 0
data modify storage unique_border:data seen set value {}

# 1x1 border covering exactly block (0, 0): x and z from 0.0 to 1.0.
# Decimals are explicit because whole numbers get shifted by +0.5.
worldborder center 0.5 0.5
worldborder set 1
worldborder warning distance 0
worldborder warning time 0
