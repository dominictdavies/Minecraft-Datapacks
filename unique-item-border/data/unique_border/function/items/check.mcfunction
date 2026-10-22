$execute if data storage unique_border:data seen."$(id)" run return 0
$data modify storage unique_border:data seen."$(id)" set value 1b
function unique_border:border/grow
$tellraw @s ["",{"text":"New item: ","color":"green"},{"text":"$(id)","color":"white"},{"text":" (","color":"gray"},{"score":{"name":"#items","objective":"unique_border"},"color":"gray"},{"text":" unique)","color":"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2
