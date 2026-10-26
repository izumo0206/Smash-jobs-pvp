#AssistWind実行

#タグ付け
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=50..,AssistMP=100..,Kirikae=3},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run tag @s add AssistWind

#アマスタ召喚
execute at @a[tag=AssistWind] run summon minecraft:armor_stand ~ ~10 ~ {Tags:["AssistRadius","WindRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}

#風の杖実行
execute at @a[tag=AssistWind] run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 0.7 1 1


execute at @a[team=Blue,tag=AssistWind] at @e[team=Blue,distance=..10] run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 0.5 50 normal
execute at @a[team=Red,tag=AssistWind] at @e[team=Red,distance=..10] run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 0.5 50 normal

execute at @a[team=Blue,tag=AssistWind] run effect give @e[team=Blue,distance=..10] minecraft:speed 10 3
execute at @a[team=Red,tag=AssistWind] run effect give @e[team=Red,distance=..10] minecraft:speed 10 3

#仕上げ
scoreboard players remove @a[tag=AssistWind] AssistMP 100
scoreboard players set @a[tag=AssistWind] AssistCooldown 100
scoreboard players set @a[tag=AssistWind] sneak 0
tag @a[tag=AssistWind] remove AssistWind
