# Remember the collection is done, so it only ever counts once
$data modify storage item_border:data completed."$(name)" set value 1b

# Double how far each item pushes the border's edges
scoreboard players operation #step item_border *= #2 item_border

# Announce it to everyone
$tellraw @a [{"text":"Collection complete: ","color":"gold"},{"text":"$(name)","color":"yellow"},{"text":"! The border has been permanently doubled.","color":"gold"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s
