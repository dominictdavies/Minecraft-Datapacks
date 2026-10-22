# Track the chest here unless it already is
execute unless entity @e[type=marker,tag=item_border.vault,distance=..0.5] run function item_border:vaults/add
