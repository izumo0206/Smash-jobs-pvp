#初期化

#値代入
scoreboard players set 時間 MinigameTime 600
scoreboard players set @a MinigameScore 0
scoreboard players set 開始判断 MinigameTime 0

#残り物
kill @e[tag=AlreadyDead]

#剥奪
tag @a[tag=MiniGamePlayer] remove MiniGamePlayer

#表示
tellraw @a [{"text":"ミニゲームは”強制終了”されました。","color":"light_purple"}]

#レッドストーンブロック消す
execute as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~6 air