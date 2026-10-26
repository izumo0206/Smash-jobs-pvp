#時間 リピート

#時間を減らす
scoreboard players remove 時間 time 1

#ボスバー
execute store result bossbar minecraft:time value run scoreboard players get 時間 time

#計算
scoreboard players operation 時間(分) time = 時間 time
scoreboard players operation 時間(分) time /= 時間(分)計算用 time

scoreboard players operation 時間(秒) time = 時間 time
scoreboard players operation 時間(秒) time %= 時間(分)計算用 time
scoreboard players operation 時間(秒) time /= 時間(秒)計算用 time



#表示
execute if score 時間(秒) time matches ..9 run bossbar set minecraft:time name [{"text":"残り "},{"score":{"name":"時間(分)","objective":"time"}},{"text":"分"},{"text":"0"},{"score":{"name":"時間(秒)","objective":"time"}},{"text":"秒"}]

execute if score 時間(秒) time matches 10.. run bossbar set minecraft:time name [{"text":"残り "},{"score":{"name":"時間(分)","objective":"time"}},{"text":"分"},{"score":{"name":"時間(秒)","objective":"time"}},{"text":"秒"}]

execute if score 時間(分) time matches 0 run bossbar set minecraft:time name [{"text":"残り "},{"score":{"name":"時間(秒)","objective":"time"}},{"text":"秒"}]

#終了10秒前
execute if score 時間 time matches ..220 run function main:time/time_finish