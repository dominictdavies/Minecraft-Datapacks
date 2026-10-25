# Resize the border in every dimension (each dimension has its own border) to the given size over the given number of ticks
$execute in minecraft:overworld run worldborder set $(size) $(time)
$execute in minecraft:the_nether run worldborder set $(size) $(time)
$execute in minecraft:the_end run worldborder set $(size) $(time)
