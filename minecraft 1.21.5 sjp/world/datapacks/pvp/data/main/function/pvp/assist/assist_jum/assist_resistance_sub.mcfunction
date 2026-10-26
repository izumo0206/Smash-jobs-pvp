#AssistResistance実行

#タグ付け
execute as @a[tag=Assist,scores={AssistCooldown=..0,sneak=5..,AssistMP=300..,Kirikae=2},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run tag @s add AssistResistance

#アマスタ召喚
execute at @a[tag=AssistResistance] run summon minecraft:armor_stand ~ ~10 ~ {Tags:["AssistRadius","ResistanceRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}

#硬化の杖実行
execute at @a[tag=AssistResistance] run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 2 1

execute at @a[team=Blue,tag=AssistResistance] at @e[team=Blue,distance=..6] run particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute at @a[team=Red,tag=AssistResistance] at @e[team=Red,distance=..6] run particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 1 50 normal

execute at @a[team=Blue,tag=AssistResistance] run effect give @e[team=Blue,distance=..6] minecraft:resistance 10 6
execute at @a[team=Red,tag=AssistResistance] run effect give @e[team=Red,distance=..6] minecraft:resistance 10 6

effect give @e[tag=AssistResistance] minecraft:slowness 6 1
effect give @e[tag=AssistResistance] minecraft:resistance 6 2

#仕上げ
scoreboard players remove @a[tag=AssistResistance] AssistMP 300
scoreboard players set @a[tag=AssistResistance] AssistCooldown 500
scoreboard players set @a[tag=AssistResistance] sneak 0
tag @a[tag=AssistResistance] remove AssistResistance
