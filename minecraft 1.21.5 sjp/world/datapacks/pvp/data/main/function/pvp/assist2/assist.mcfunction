#アシスト　リピート


#回復の杖　効果
execute at @e[tag=BlueHeelRadius] run effect give @e[team=Blue,distance=..6] minecraft:regeneration 3 1 true
execute at @e[tag=RedHeelRadius] run effect give @e[team=Red,distance=..6] minecraft:regeneration 3 1 true


#MP回復
execute as @a[tag=Assist2,scores={sneak=1..,walk=0,dash=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"魔力の杖"}}}] run function main:pvp/assist2/assist_mp

function main:pvp/assist2/assist_kirikae

scoreboard players set @a[tag=Assist2,scores={AssistCooldown=1..}] sneak 0
scoreboard players set @a[tag=Assist2,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Assist2,scores={dash=1..}] sneak 0
scoreboard players set @a[tag=Assist2,scores={Kirikae=7..}] Kirikae 0
scoreboard players remove @a[tag=Assist2,scores={AssistCooldown=1..}] AssistCooldown 1
scoreboard players set @a[tag=Assist2,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Assist2,scores={dash=1..}] dash 0

#分身数え
execute store result score @a[tag=Assist2] avatercount2 if entity @e[tag=avater2]

#スキル
execute at @a[tag=Assist2,team=Blue] run effect give @e[team=Blue,distance=..6,tag=!Assist2] minecraft:resistance 1 0 true
execute at @a[tag=Assist2,team=Red] run effect give @e[team=Red,distance=..6,tag=!Assist2] minecraft:resistance 1 0 true

#詠唱時パーティクル
execute as @a[tag=Assist2,scores={sneak=1..}] run execute at @s run particle minecraft:effect ~ ~1 ~ 1 1 1 1 1 normal

#パーティクル 制御
execute as @e[tag=AssistRadius] at @s run tp @s ~ ~ ~ ~12 ~
execute as @e[tag=AssistRadius] run scoreboard players add @s AssistRadius 1
execute as @e[tag=AssistRadius,scores={AssistRadius=40..}] run kill @s
#回復
execute as @e[tag=BlueHeelRadius] at @s run particle minecraft:heart ^ ^ ^6 0.01 0.01 0.01 0.01 1 force
execute as @e[tag=RedHeelRadius] at @s run particle minecraft:heart ^ ^ ^6 0.01 0.01 0.01 0.01 1 force
#風
execute as @e[tag=WindRadius] at @s run particle minecraft:sweep_attack ^ ^-9.9 ^10 0.01 0.01 0.01 0.01 1 force
#硬化
execute as @e[tag=ResistanceRadius] at @s run particle minecraft:large_smoke ^ ^-9.9 ^10 0.01 0.01 0.01 0.01 1 force
#空
execute as @e[tag=SkyRadius] at @s run particle minecraft:bubble_pop ^ ^-9.9 ^10 0.01 0.01 0.01 0.01 1 force
#分身
execute as @e[tag=AvatarRadius] at @s run particle minecraft:note ^ ^-9.9 ^10 0.01 0.01 0.01 0.01 1 force


#回復の杖
execute if entity @a[tag=Assist2,scores={Kirikae=0}] run function main:pvp/assist2/assist_jum/assist_heel
#光の杖
execute if entity @a[tag=Assist2,scores={Kirikae=1}] run function main:pvp/assist2/assist_jum/assist_light
#鋼化の杖
execute if entity @a[tag=Assist2,scores={Kirikae=2}] run function main:pvp/assist2/assist_jum/assist_resistance
#風の杖
execute if entity @a[tag=Assist2,scores={Kirikae=3}] run function main:pvp/assist2/assist_jum/assist_wind
#空の杖
execute if entity @a[tag=Assist2,scores={Kirikae=4}] run function main:pvp/assist2/assist_jum/assist_sky
#幻覚の杖
execute if entity @a[tag=Assist2,scores={Kirikae=5}] run function main:pvp/assist2/assist_jum/assist_hallucinations
#応援の杖
execute if entity @a[tag=Assist2,scores={Kirikae=6}] run function main:pvp/assist2/assist_jum/assist_buff