#AssistSky実行

#タグ付け
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=30..,AssistMP=200..,Kirikae=4},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run tag @s add AssistSky


#アマスタ召喚
execute at @a[tag=AssistSky] run summon minecraft:armor_stand ~ ~10 ~ {Tags:["AssistRadius","SkyRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}


#空の杖実行
execute at @a[tag=AssistSky] run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2 1

execute at @a[team=Blue,tag=AssistSky] at @e[team=Blue,distance=..6] run particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0.1 300 normal
execute at @a[team=Red,tag=AssistSky] at @e[team=Red,distance=..6] run particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0.1 300 normal

execute at @a[team=Blue,tag=AssistSky] run effect give @e[team=Blue,distance=..6] minecraft:levitation 8 1
execute at @a[team=Red,tag=AssistSky] run effect give @e[team=Red,distance=..6] minecraft:levitation 8 1

execute at @a[team=Blue,tag=AssistSky] run effect give @e[team=Blue,distance=..6] minecraft:resistance 8 3
execute at @a[team=Red,tag=AssistSky] run effect give @e[team=Red,distance=..6] minecraft:resistance 8 3

execute at @a[team=Blue,tag=AssistSky] run effect give @e[team=Blue,distance=..6] minecraft:slow_falling 11 1
execute at @a[team=Red,tag=AssistSky] run effect give @e[team=Red,distance=..6] minecraft:slow_falling 11 1

#仕上げ
scoreboard players remove @a[tag=AssistSky] AssistMP 200
scoreboard players set @a[tag=AssistSky] AssistCooldown 200
scoreboard players set @a[tag=AssistSky] sneak 0
tag @a[tag=AssistSky] remove AssistSky
