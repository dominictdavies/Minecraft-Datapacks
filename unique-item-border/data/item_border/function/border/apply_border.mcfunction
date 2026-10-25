# Resize each dimension's border to its given size over the given number of ticks, so every edge finishes moving together
$execute in minecraft:overworld run worldborder set $(size) $(time)
$execute in minecraft:the_nether run worldborder set $(scaled_size) $(time)
$execute in minecraft:the_end run worldborder set $(scaled_size) $(time)
