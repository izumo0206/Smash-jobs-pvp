#ターゲットランダム

#ランダム生成
execute as @e[tag=Target] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["random"]}
execute as @e[tag=Target] at @s store result score @s random run data get entity @e[type=area_effect_cloud,tag=random,limit=1,sort=nearest] UUID[0]
#演算
execute as @e[tag=Target] run scoreboard players operation @s random %= 200 random
execute as @e[tag=Target] run scoreboard players operation @s random -= 100 random
execute as @e[tag=Target] if score @s random matches 1..49 run scoreboard players operation @s random += 50 random
execute as @e[tag=Target] if score @s random matches -49..-1 run scoreboard players operation @s random -= 50 random

#ランダムその2生成
execute as @e[tag=Target] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["random1"]}
execute as @e[tag=Target] at @s store result score @s random0 run data get entity @e[type=area_effect_cloud,tag=random1,limit=1,sort=nearest] UUID[0]
#演算
execute as @e[tag=Target] run scoreboard players operation @s random0 %= 100 random



#低速落下
effect give @e[tag=Target] minecraft:slow_falling 1 1 true

#ランダムに動かす
execute as @e[tag=Target] run execute if score @s random0 matches 0..10 run execute store result entity @s Motion[0] double 0.005 run scoreboard players get @s random
execute as @e[tag=Target] run execute if score @s random0 matches 20..30 run execute store result entity @s Motion[1] double 0.003 run scoreboard players get @s random
execute as @e[tag=Target] run execute if score @s random0 matches 40..50 run execute store result entity @s Motion[2] double 0.005 run scoreboard players get @s random



#誰も敵がいない場合終了
execute unless entity @e[tag=Target] run execute as @e[tag=CentralControlSystem] at @s run setblock ~1 ~ ~6 air