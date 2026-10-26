#遊ぶエリアを決めるところ（後でTPする場所決めるよう）

playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1

execute if score ステージ決め DayCycle matches 2 run scoreboard players set ステージ決め DayCycle 0

execute if score ステージ決め DayCycle matches 1 run scoreboard players set ステージ決め DayCycle 2

execute if score ステージ決め DayCycle matches 0 run scoreboard players set ステージ決め DayCycle 1

#看板
execute if score ステージ決め DayCycle matches 1 at @e[tag=DayNightSetting] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"デイサイクルは"},"有効です",""]}}
execute if score ステージ決め DayCycle matches 2 at @e[tag=DayNightSetting] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"デイサイクルは"},"無効です",""]}}

#ゲームルール
execute if score ステージ決め DayCycle matches 1 run gamerule doDaylightCycle true
execute if score ステージ決め DayCycle matches 2 run gamerule doDaylightCycle false