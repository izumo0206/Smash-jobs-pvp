#ちょっとめんどい

#時間経過
execute if score 開始判断 MinigameTime matches 1 run scoreboard players remove 時間 MinigameTime 1

execute if score 開始判断 MinigameTime matches 1 run execute if score 時間 MinigameTime matches ..0 run scoreboard players set 開始判断 MinigameTime 2


execute if score 開始判断 MinigameTime matches 1 run execute if score 時間 MinigameTime matches 400 run tellraw @a[tag=MiniGamePlayer] [{"text":"残り時間”20秒”","color":"green"}]
execute if score 開始判断 MinigameTime matches 1 run execute if score 時間 MinigameTime matches 200 run tellraw @a[tag=MiniGamePlayer] [{"text":"残り時間”10秒”","color":"green"}]
execute if score 開始判断 MinigameTime matches 1 run execute if score 時間 MinigameTime matches 100 run tellraw @a[tag=MiniGamePlayer] [{"text":"残り時間”5秒”","color":"green"}]
execute if score 開始判断 MinigameTime matches 1 run execute if score 時間 MinigameTime matches 80 run tellraw @a[tag=MiniGamePlayer] [{"text":"残り時間”4秒”","color":"green"}]
execute if score 開始判断 MinigameTime matches 1 run execute if score 時間 MinigameTime matches 60 run tellraw @a[tag=MiniGamePlayer] [{"text":"残り時間”3秒”","color":"green"}]
execute if score 開始判断 MinigameTime matches 1 run execute if score 時間 MinigameTime matches 40 run tellraw @a[tag=MiniGamePlayer] [{"text":"残り時間”2秒”","color":"green"}]
execute if score 開始判断 MinigameTime matches 1 run execute if score 時間 MinigameTime matches 20 run tellraw @a[tag=MiniGamePlayer] [{"text":"残り時間”1秒”","color":"green"}]



execute if score 開始判断 MinigameTime matches 1 run execute unless entity @e[type=minecraft:zombie,tag=AlreadyDead,x=-4998,y=3,z=-4995,dx=20,dy=2,dz=14] run function main:training/training_sub

execute if score 開始判断 MinigameTime matches 2 run function main:training/training_sub_finish
