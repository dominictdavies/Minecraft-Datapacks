data modify storage unique_border:tmp pick.index set value 0
$execute if score #pool unique_border matches 1.. store result storage unique_border:tmp pick.index int 1 run random value 0..$(max)
function unique_border:hint_show with storage unique_border:tmp pick
