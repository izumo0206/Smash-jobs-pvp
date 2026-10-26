#両チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(赤) MainStartJuDge2 0
scoreboard players set メインスタート判断(青) MainStartJuDge2 0


#保険
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:red_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:blue_stained_glass_pane


#スケジュール予約
schedule function main:stage/schedule/5_seconds2 20t
schedule function main:stage/schedule/4_seconds2 40t
schedule function main:stage/schedule/3_seconds2 60t
schedule function main:stage/schedule/2_seconds2 80t
schedule function main:stage/schedule/1_seconds2 100t
schedule function main:stage/schedule/0_seconds2 120t