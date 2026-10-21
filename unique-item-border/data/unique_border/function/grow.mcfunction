scoreboard players add #items unique_border 1
execute if score #items unique_border matches 1 run worldborder set 10
execute unless score #items unique_border matches 1 run worldborder add 10
