$execute if data storage item_border:data seen."$(id)" run return 0
$data modify storage item_border:data seen."$(id)" set value 1b
function item_border:border/grow
$tellraw @s ["",{"text":"New item: ","color":"green"},{"text":"$(id)","color":"white"},{"text":" (","color":"gray"},{"score":{"name":"#items","objective":"item_border"},"color":"gray"},{"text":" unique)","color":"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2
