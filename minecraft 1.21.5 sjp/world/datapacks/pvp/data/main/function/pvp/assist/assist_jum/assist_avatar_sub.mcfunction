#AssistAvatar実行

#タグ付け
execute as @a[tag=Assist,scores={AssistCooldown=..0,sneak=50..,AssistMP=50..,Kirikae=6},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run tag @s add AssistAvatar



execute at @a[tag=AssistAvatar] run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 0.5 2 1


#アマスタ召喚
execute at @a[tag=AssistAvatar] run summon minecraft:armor_stand ~ ~10 ~ {Tags:["AssistRadius","AvatarRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}


#分身の杖実行
execute at @a[tag=AssistAvatar,team=Blue] at @e[team=Blue,distance=..6] run particle minecraft:note ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=AssistAvatar,team=Red] at @e[team=Red,distance=..6] run particle minecraft:note ~ ~ ~ 1 1 1 1 500 normal

execute at @a[team=Blue,tag=AssistAvatar] at @e[team=Blue,distance=..6] run summon zombie ~ ~ ~ {Tags:["MTentity"],CustomNameVisible:1b,Team:"Blue",Health:10f,CustomName:"デコイ",equipment:{head:{id:"minecraft:iron_helmet",count:1}},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:10}]}

execute at @a[team=Red,tag=AssistAvatar] at @e[team=Red,distance=..6] run summon zombie ~ ~ ~ {Tags:["MTentity"],CustomNameVisible:1b,Team:"Red",Health:10f,CustomName:"デコイ",equipment:{head:{id:"minecraft:iron_helmet",count:1}},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:10}]}



#仕上げ
scoreboard players remove @a[tag=AssistAvatar] AssistMP 50
scoreboard players set @a[tag=AssistAvatar] AssistCooldown 100
scoreboard players set @a[tag=AssistAvatar] sneak 0
tag @a[tag=AssistAvatar] remove AssistAvatar
