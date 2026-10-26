#残り4秒

#赤残り4秒
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~1 ~ ~4 ~-1 minecraft:diamond_block destroy
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~1 ~-1 ~ ~0 ~ minecraft:red_stained_glass_pane destroy
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~3 ~ ~ ~4 ~ minecraft:red_stained_glass_pane destroy

#青残り4秒
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:blue_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~1 ~ ~4 ~-1 minecraft:diamond_block destroy
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~1 ~1 ~ ~0 ~ minecraft:blue_stained_glass_pane destroy
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~3 ~ ~ ~4 ~ minecraft:blue_stained_glass_pane destroy