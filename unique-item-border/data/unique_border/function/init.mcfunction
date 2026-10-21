scoreboard players set #initialized unique_border 1
scoreboard players set #items unique_border 0
data modify storage unique_border:data seen set value {}
worldborder center 1.0 1.0
worldborder set 2
worldborder warning distance 0
worldborder warning time 0
setworldspawn 0 ~ 0

# Keep the spawn chunk loaded so the player can be placed there
forceload add 0 0
