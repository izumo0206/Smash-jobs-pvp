#残り5秒


#表示用アーマースタンドキル
kill @e[tag=AkaNoSuta-toTitenNoAmasuta0]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAkaReady0]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAoReady0]
kill @e[tag=AkaNoSuta-toTitenNoAmasuta1]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAkaReady1]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAoReady1]
kill @e[tag=AoNoSuta-toTitenNoAmasuta0]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAkaReady0]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAoReady0]
kill @e[tag=AoNoSuta-toTitenNoAmasuta1]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAoReady1]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAkaReady1]

#赤残り5秒
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-7 ~ ~ ~6 ~6 ~ minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-1 ~ ~ ~1 ~4 ~ minecraft:diamond_block destroy
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-1 ~1 ~ ~ ~1 ~ minecraft:red_stained_glass_pane destroy
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~1 ~3 ~ ~ ~3 ~ minecraft:red_stained_glass_pane destroy

#青残り5秒
execute at @e[tag=AoNoSuta-toTitenn] run fill ~-5 ~ ~ ~5 ~6 ~ minecraft:blue_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn] run fill ~1 ~ ~ ~-1 ~4 ~ minecraft:diamond_block destroy
execute at @e[tag=AoNoSuta-toTitenn] run fill ~1 ~1 ~ ~ ~1 ~ minecraft:blue_stained_glass_pane destroy
execute at @e[tag=AoNoSuta-toTitenn] run fill ~-1 ~3 ~ ~ ~3 ~ minecraft:blue_stained_glass_pane destroy