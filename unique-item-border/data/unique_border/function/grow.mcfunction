# After n items the border is 10n wide, covering blocks -(5n-1) to 5n,
# so it's centered on x = z = 1.0.
scoreboard players add #items unique_border 1
execute store result storage unique_border:data border.size int 10 run scoreboard players get #items unique_border
worldborder center 1.0 1.0
function unique_border:apply_border with storage unique_border:data border
