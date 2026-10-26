#制限時間をボタン一つで設定できちゃうマシーン（インパルス）

playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1

scoreboard players add 時間設定判定用 TimeValueSet 1

#現在マックスを120分にしてるので13
scoreboard players set 時間設定判定用MAX TimeValueSet 13

#10分ごと増やしてるので12000
scoreboard players set 時間設定判定用計算用倍率 TimeValueSet 12000

#演算
scoreboard players set 時間設定判定用計算用1 TimeValueSet 1
scoreboard players operation 時間設定判定用 TimeValueSet %= 時間設定判定用MAX TimeValueSet
scoreboard players operation 時間設定 TimeValueSet = 時間設定判定用 TimeValueSet
scoreboard players operation 時間設定 TimeValueSet *= 時間設定判定用計算用倍率 TimeValueSet

#0じゃない時非表示
execute unless score 時間設定判定用 TimeValueSet matches 0 run bossbar set minecraft:time players @a

#ボスバーの最大値設定
execute unless score 時間設定判定用 TimeValueSet matches 0 store result bossbar minecraft:time max run scoreboard players get 時間設定 TimeValueSet

#ボスバーの名前の演算
execute unless score 時間設定判定用 TimeValueSet matches 0 run scoreboard players operation 時間設定 TimeValueSet += 時間設定判定用計算用1 TimeValueSet
execute unless score 時間設定判定用 TimeValueSet matches 0 run scoreboard players operation 時間 time = 時間設定 TimeValueSet
execute unless score 時間設定判定用 TimeValueSet matches 0 run function main:time/time

#看板(0じゃない時)
execute unless score 時間設定判定用 TimeValueSet matches 0 at @e[tag=KariokiTimeSetting] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"制限時間は"},[{"score":{"name":"時間(分)","objective":"time"}},"分"],"に設定されています"]}}


#0の時ボスバーを消す
execute if score 時間設定判定用 TimeValueSet matches 0 run bossbar set minecraft:time players

#0の時の看板
execute if score 時間設定判定用 TimeValueSet matches 0 at @e[tag=KariokiTimeSetting] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"制限時間は"},["ありません"],""]}}

#0の時も可変式ステージやるために値は代入しておく
execute if score 時間設定判定用 TimeValueSet matches 0 run scoreboard players set 時間 time 2147483600 