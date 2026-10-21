scoreboard players set @s unique_border.hint 0
data modify storage unique_border:tmp all set from storage unique_border:items all
data modify storage unique_border:tmp pool set value []
function unique_border:hint_filter
execute store result score #pool unique_border run data get storage unique_border:tmp pool
execute if score #pool unique_border matches 0 run return run tellraw @s {"text":"You've discovered every item!","color":"gold"}
tellraw @s {"text":"Undiscovered items:","color":"gold"}
scoreboard players set #picks unique_border 8
function unique_border:hint_pick
