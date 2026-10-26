#AssistBuff実行

#タグ付け
execute as @a[tag=Assist,scores={AssistCooldown=..0,sneak=200..,AssistMP=200..,Kirikae=7},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run tag @s add AssistBuff

#アマスタ召喚
execute at @a[tag=AssistBuff] run summon minecraft:armor_stand ~ ~10 ~ {Tags:["AssistRadius","WindRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}

#応援の杖実行
execute at @a[tag=AssistBuff] run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.7 1 1


execute at @a[team=Blue,tag=AssistBuff] at @e[team=Blue,distance=..6] run particle minecraft:lava ~ ~ ~ 1 1 1 0.5 50 normal
execute at @a[team=Red,tag=AssistBuff] at @e[team=Red,distance=..6] run particle minecraft:lava ~ ~ ~ 1 1 1 0.5 50 normal

execute at @a[team=Blue,tag=AssistBuff] run effect give @e[team=Blue,distance=..6] minecraft:strength 10 2
execute at @a[team=Red,tag=AssistBuff] run effect give @e[team=Red,distance=..6] minecraft:strength 10 2

#仕上げ
scoreboard players remove @a[tag=AssistBuff] AssistMP 200
scoreboard players set @a[tag=AssistBuff] AssistCooldown 200
scoreboard players set @a[tag=AssistBuff] sneak 0
tag @a[tag=AssistBuff] remove AssistBuff
