#初期化

execute unless score 開始判断 MinigameTime matches 0 run tellraw @a [{"text":"まだ人がやってますよ","color":"red"}]

#スコアボード宣言
scoreboard objectives add MinigameTime dummy
scoreboard objectives add MinigameScore dummy

#値代入
execute if score 開始判断 MinigameTime matches 0 run scoreboard players set 時間 MinigameTime 600
execute if score 開始判断 MinigameTime matches 0 run scoreboard players set @a MinigameScore 0
execute if score 開始判断 MinigameTime matches 0 run scoreboard players set 開始判断 MinigameTime 0

#チーム
execute if score 開始判断 MinigameTime matches 0 run execute as @e[tag=MiniGameStartPlace] at @s run tag @p add MiniGamePlayer
execute if score 開始判断 MinigameTime matches 0 run execute as @a[tag=MiniGamePlayer] at @s run team join Blue

#表示
execute if score 開始判断 MinigameTime matches 0 run tellraw @a [{"text":"ミニゲームのプレイヤー : ","color":"green"},{"selector":"@a[tag=MiniGamePlayer]"}]

execute if score 開始判断 MinigameTime matches 0 run schedule function main:training/training_3 20t
execute if score 開始判断 MinigameTime matches 0 run schedule function main:training/training_2 40t
execute if score 開始判断 MinigameTime matches 0 run schedule function main:training/training_1 60t
execute if score 開始判断 MinigameTime matches 0 run schedule function main:training/training_0 80t


#レッドストーンブロック置く
execute as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~6 minecraft:redstone_block