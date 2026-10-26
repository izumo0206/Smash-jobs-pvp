#太陽の火のエフェクト
particle minecraft:flame ~ ~ ~ 3 3 3 0.02 5 force
#ダメージ
execute as @a at @s if entity @s[y=35,dy=20] run damage @r[distance=..5] 1 minecraft:in_fire