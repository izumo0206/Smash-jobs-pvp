#両チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(赤) MainStartJuDge 0
scoreboard players set メインスタート判断(青) MainStartJuDge 0


#保険
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-7 ~ ~ ~6 ~6 ~ minecraft:red_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn] run fill ~-5 ~ ~ ~5 ~6 ~ minecraft:blue_stained_glass_pane


#スケジュール予約
schedule function main:stage/schedule/5_seconds 20t
schedule function main:stage/schedule/4_seconds 40t
schedule function main:stage/schedule/3_seconds 60t
schedule function main:stage/schedule/2_seconds 80t
schedule function main:stage/schedule/1_seconds 100t
schedule function main:stage/schedule/0_seconds 120t