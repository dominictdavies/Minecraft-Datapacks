# Flag the chest here as tracked if it has a marker
execute if entity @e[type=marker,tag=item_border.vault,distance=..0.5] run scoreboard players set #tracked item_border 1
