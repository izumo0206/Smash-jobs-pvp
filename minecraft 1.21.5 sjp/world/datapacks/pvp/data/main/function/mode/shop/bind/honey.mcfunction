#発光蜜を使用したプレイヤーの敵チームを60秒間発光させる
execute as @a[team=Red,scores={honey=1..}] at @s run effect give @a[team=Blue] minecraft:glowing 60 0 true
execute as @a[team=Blue,scores={honey=1..}] at @s run effect give @a[team=Red] minecraft:glowing 60 0 true
scoreboard players set @a[scores={honey=1..}] honey 0
