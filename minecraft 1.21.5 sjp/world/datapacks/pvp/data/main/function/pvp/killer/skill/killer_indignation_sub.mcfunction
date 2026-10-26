#雷実行

#タグ付け
execute as @a[tag=Killer,scores={sneak=10..}] run tag @s add KillerIndignation



execute at @a[tag=KillerIndignation] run playsound minecraft:entity.ender_dragon.growl master @p ~ ~ ~ 0.8 0.5
execute at @a[tag=KillerIndignation] run playsound minecraft:entity.arrow.hit_player master @p ~ ~ ~ 0.5 2
execute at @a[tag=KillerIndignation] run particle minecraft:explosion



#激怒
execute at @e[tag=KillerIndignation] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
effect give @e[tag=KillerIndignation] minecraft:speed 7 5 false
effect give @e[tag=KillerIndignation,scores={SelectStatus=1}] minecraft:speed 9 8 false
effect give @e[tag=KillerIndignation] minecraft:strength 7 5 false
execute at @a[team=Red,tag=KillerIndignation] run effect give @e[team=Blue,distance=..3] minecraft:glowing 3 1 true
execute at @a[team=Red,tag=KillerIndignation,scores={SelectStatus=1}] run effect give @e[team=Blue,distance=..6] minecraft:glowing 6 1 true
execute at @a[team=Blue,tag=KillerIndignation,scores={SelectStatus=1}] run effect give @e[team=Red,distance=..6] minecraft:glowing 6 1 true
schedule function main:pvp/killer/skill/killer_indignation_sub_sub 7s




#仕上げ
scoreboard players set @e[tag=KillerIndignation] sneak 0
tag @e[tag=KillerIndignation] remove KillerIndignation
