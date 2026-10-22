# Show completed collections with a green tick and a grey struck-through name
$execute if data storage item_border:data completed."$(name)" run return run tellraw @s [{"text":" ✔ ","color":"green"},{"text":"$(name)","color":"gray","strikethrough":true}]

# Show incomplete collections with a red cross and a white name
$tellraw @s [{"text":" ✘ ","color":"red"},{"text":"$(name)","color":"white"}]
