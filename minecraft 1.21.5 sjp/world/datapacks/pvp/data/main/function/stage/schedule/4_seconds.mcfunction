#残り4秒

#赤残り4秒
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-7 ~ ~ ~6 ~6 ~ minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-1 ~ ~ ~1 ~4 ~ minecraft:diamond_block destroy
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-1 ~1 ~ ~0 ~0 ~ minecraft:red_stained_glass_pane destroy
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~ ~3 ~ ~ ~4 ~ minecraft:red_stained_glass_pane destroy

#青残り4秒
execute at @e[tag=AoNoSuta-toTitenn] run fill ~-5 ~ ~ ~5 ~6 ~ minecraft:blue_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn] run fill ~-1 ~ ~ ~1 ~4 ~ minecraft:diamond_block destroy
execute at @e[tag=AoNoSuta-toTitenn] run fill ~1 ~1 ~ ~0 ~0 ~ minecraft:blue_stained_glass_pane destroy
execute at @e[tag=AoNoSuta-toTitenn] run fill ~ ~3 ~ ~ ~4 ~ minecraft:blue_stained_glass_pane destroy