#時間 値代入


#時間設定
scoreboard players set 時間 time 36000
bossbar set minecraft:time max 36000

#どのみち入力されるけど怖いから仮入力
scoreboard players set 時間(秒) time 0
scoreboard players set 時間(分) time 30
scoreboard players set 時間(花火) time 0
#計算用の値
scoreboard players set 時間(分)計算用 time 1200
scoreboard players set 時間(秒)計算用 time 20
scoreboard players set 時間(花火)計算用 time 100
#ボスバー値反映
execute store result bossbar minecraft:time value run scoreboard players get 時間 time
bossbar set minecraft:time name [{"text":"残り "},{"score":{"name":"時間(分)","objective":"time"}},{"text":"分"},{"text":"0"},{"score":{"name":"時間(秒)","objective":"time"}},{"text":"秒"}]