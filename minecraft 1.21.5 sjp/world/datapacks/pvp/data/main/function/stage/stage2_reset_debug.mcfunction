#ステージ リセット


#スコアボード初期化
scoreboard players set メインスタート判断(赤) MainStartJuDge2 0
scoreboard players set メインスタート判断(青) MainStartJuDge2 0


#アマスタキル
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



#赤開けゴマ
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:air destroy

#青開けゴマ
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:blue_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:air destroy