#ステージ リセット


#スコアボード初期化
scoreboard players set メインスタート判断(赤) MainStartJuDge 0
scoreboard players set メインスタート判断(青) MainStartJuDge 0


#アマスタキル
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



#赤開けゴマ
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-7 ~ ~ ~6 ~6 ~ minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-7 ~ ~ ~6 ~6 ~ minecraft:air destroy

#青開けゴマ
execute at @e[tag=AoNoSuta-toTitenn] run fill ~-5 ~ ~ ~5 ~6 ~ minecraft:blue_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn] run fill ~-5 ~ ~ ~5 ~6 ~ minecraft:air destroy