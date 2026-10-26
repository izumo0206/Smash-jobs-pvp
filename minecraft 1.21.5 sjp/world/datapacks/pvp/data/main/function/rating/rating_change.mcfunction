#レートの変動をする

scoreboard players set 赤チーム合計 total_rating 0
scoreboard players set 青チーム合計 total_rating 0

execute as @a[team=Red] run scoreboard players operation 赤チーム合計 total_rating += @s rating

execute as @a[team=Blue] run scoreboard players operation 青チーム合計 total_rating += @s rating

execute if score 赤チーム ticket matches ..0 run scoreboard players add @a[team=Blue] rating 10

execute if score 赤チーム ticket matches ..0 run scoreboard players remove @a[team=Red] rating 10

execute if score 青チーム ticket matches ..0 run scoreboard players add @a[team=Red] rating 10

execute if score 青チーム ticket matches ..0 run scoreboard players remove @a[team=Blue] rating 10

execute if score 赤チーム合計 total_rating > 青チーム合計 total_rating run scoreboard players add @a[team=Blue] rating 3

execute if score 青チーム合計 total_rating > 赤チーム合計 total_rating run scoreboard players add @a[team=Red] rating 3

execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 0 unless score 青チーム ticket = 赤チーム ticket if score 青チーム ticket > 赤チーム ticket run scoreboard players add @a[team=Blue] rating 5

execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 0 unless score 青チーム ticket = 赤チーム ticket if score 青チーム ticket > 赤チーム ticket run scoreboard players remove @a[team=Red] rating 5

execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 0 unless score 青チーム ticket = 赤チーム ticket if score 青チーム ticket < 赤チーム ticket run scoreboard players add @a[team=Red] rating 5

execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 0 unless score 青チーム ticket = 赤チーム ticket if score 青チーム ticket < 赤チーム ticket run scoreboard players remove @a[team=Blue] rating 5
