# Future ideas

## Border based on items currently kept

The border tracks how many unique items you *currently hold*, not how many you've ever found.
If the last of an item is destroyed, the border shrinks. Finding it again expands it again.

### Feasibility

- **Player inventory and ender chest:** easy. Read `Inventory` and `EnderItems` from the player.
  Only works for online players.
- **Containers in the world:** the hard part. A datapack can't list every chest in the world, and
  can't read containers in unloaded chunks at all.
  - Workable compromise: only count specific "vault" containers, e.g. ones in a fixed area near
    spawn, or ones the player registers. These can be read with `data get block`.
  - Nested storage (shulker boxes, bundles) needs recursive scanning of item components.
- **Detecting destruction:** there's no event for an item burning in lava, despawning or being used
  up in crafting. So the count has to be rebuilt by rescanning periodically, not updated
  incrementally.
- **Unknown world chests:** unopened loot chests store a loot table, not items, so they wouldn't
  count until opened.
- **Shrinking:** a shrinking border can leave the player outside it. Since border damage is
  turned off, they'd be stranded outside rather than hurt. They'd need teleporting back in, or
  border damage turned back on.

## Slow-start exponential growth

- Growth per item starts at 4 blocks and creeps up, reaching 5 only after half of all items.
- The second-to-last item brings the border to 20,000 × 20,000.
- The final item sets it to the maximum (59,999,968).

A curve that fits, with N = 1534 items:

    rate(n) = 4 + (e^(a·n) − 1) / (x − 1),   x ≈ 78.1,   a = 2·ln(x) / N

| Items found | Blocks per item | Border width |
|------------:|----------------:|-------------:|
|           1 |            4.00 |            8 |
|         100 |            4.01 |          404 |
|         500 |            4.21 |        2,034 |
|   767 (half)|            5.00 |        3,238 |
|       1,000 |            7.79 |        4,660 |
|       1,250 |           19.74 |        7,766 |
|       1,400 |           40.94 |       12,105 |
|       1,500 |           69.21 |       17,494 |
|       1,533 |           82.67 |       20,000 |
|       1,534 |               — |   59,999,968 |

Implementation: scoreboards only do integer math, so precompute a lookup table of sizes, one per
item count, and generate it alongside `all_items.mcfunction`. `grow` then reads `sizes[n]` with a
macro. Clamp the index in case more items are found than the list contains.
