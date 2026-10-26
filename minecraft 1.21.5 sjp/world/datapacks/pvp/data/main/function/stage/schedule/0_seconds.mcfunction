#残り0秒

#赤の数字を消して全面ガラスへ戻す
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-7 ~ ~ ~6 ~6 ~ minecraft:red_stained_glass_pane

#青の数字を消して全面ガラスへ戻す
execute at @e[tag=AoNoSuta-toTitenn] run fill ~-5 ~ ~ ~5 ~6 ~ minecraft:blue_stained_glass_pane


#小マップモード
#なし
execute if score 小マップモード Mode matches 0 run function main:mode/smallmap/small_map_a_reset
execute if score 小マップモード Mode matches 0 run function main:mode/smallmap/small_map_b_reset
#小マップモードA
execute if score 小マップモード Mode matches 1 run function main:mode/smallmap/small_map_a_set
execute if score 小マップモード Mode matches 1 run function main:mode/smallmap/small_map_b_reset
#小マップモードB
execute if score 小マップモード Mode matches 2 run function main:mode/smallmap/small_map_b_set
execute if score 小マップモード Mode matches 2 run function main:mode/smallmap/small_map_a_reset


#スタートファンクション呼び出し
function main:start/start
