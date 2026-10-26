#AssistHeel実行

#タグ付け
execute as @a[tag=Assist,scores={AssistCooldown=..0,sneak=30..,AssistMP=50..,Kirikae=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run tag @s add AssistHeel


execute at @a[tag=AssistHeel] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 2 1



#アマスタ召喚
execute at @a[team=Blue,tag=AssistHeel] run summon minecraft:armor_stand ~ ~ ~ {Tags:["AssistRadius","BlueHeelRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}
execute at @a[team=Red,tag=AssistHeel] run summon minecraft:armor_stand ~ ~ ~ {Tags:["AssistRadius","RedHeelRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}


execute at @a[team=Blue,tag=AssistHeel] run effect give @e[team=Blue,distance=..6] minecraft:regeneration 5 4
execute at @a[team=Red,tag=AssistHeel] run effect give @e[team=Red,distance=..6] minecraft:regeneration 5 4

#回復の杖実行
execute at @a[tag=AssistHeel] run particle minecraft:heart ~ ~ ~ 1 1 1 1 50 normal

#仕上げ
scoreboard players remove @a[tag=AssistHeel] AssistMP 50
scoreboard players set @a[tag=AssistHeel] AssistCooldown 200
scoreboard players set @a[tag=AssistHeel] sneak 0
tag @a[tag=AssistHeel] remove AssistHeel
