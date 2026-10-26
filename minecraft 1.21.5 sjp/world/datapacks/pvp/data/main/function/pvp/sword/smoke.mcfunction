#スモーク リピート 剥奪アリ

execute as @e[type=minecraft:snowball] at @s run summon minecraft:armor_stand ~ ~10 ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["smoke","MTentity"]}
scoreboard players add @e[tag=smoke] smoke 1
execute as @e[type=minecraft:snowball] at @s run kill @e[tag=smoke,scores={smoke=2..}]
execute as @e[tag=smoke,scores={smoke=3..}] at @s run particle minecraft:campfire_cosy_smoke ~ ~-10 ~ 1.6 1.6 1.6 0 800 normal
execute at @e[tag=smoke,scores={smoke=3..}] run fill ~-2 ~ ~-2 ~2 ~-11 ~2 minecraft:air replace minecraft:fire
execute as @e[tag=smoke,scores={smoke=3..}] at @s run kill @e[tag=smoke,scores={smoke=3..}]
