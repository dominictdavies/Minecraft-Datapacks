# Revoke the advancement so it can trigger again
advancement revoke @s only item_border:vaults/compass_used

# Trace from the player's eyes, up to 6 blocks, to find the chest they clicked
scoreboard players set #steps item_border 60
execute anchored eyes positioned ^ ^ ^ run function item_border:vaults/raycast
