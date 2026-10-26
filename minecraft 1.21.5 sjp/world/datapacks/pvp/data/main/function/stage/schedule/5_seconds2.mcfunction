#残り5秒


#表示用アーマースタンドキル
kill @e[tag=AkaNoSuta-toTitenNoAmasuta02]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAkaReady02]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAoReady02]
kill @e[tag=AkaNoSuta-toTitenNoAmasuta12]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAkaReady12]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAoReady12]
kill @e[tag=AoNoSuta-toTitenNoAmasuta02]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAkaReady02]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAoReady02]
kill @e[tag=AoNoSuta-toTitenNoAmasuta12]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAoReady12]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAkaReady12]

#赤残り5秒
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~-1 ~ ~4 ~1 minecraft:diamond_block destroy
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~1 ~-1 ~ ~1 ~ minecraft:red_stained_glass_pane destroy
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~3 ~1 ~ ~3 ~ minecraft:red_stained_glass_pane destroy

#青残り5秒
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:blue_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~1 ~ ~4 ~-1 minecraft:diamond_block destroy
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~1 ~1 ~ ~1 ~ minecraft:blue_stained_glass_pane destroy
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~3 ~-1 ~ ~3 ~ minecraft:blue_stained_glass_pane destroy