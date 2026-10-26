#AssistAvatar実行

#タグ付け
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=150..,AssistMP=100..,Kirikae=6,avatarcount=..20},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{display:{Name:'{"text":"アシストの杖"}',Lore:['{"text":"ジャンプで能力変化"}']}}}}] run tag @s add AssistAvatar



execute at @a[tag=AssistAvatar] run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 0.5 2 1


#アマスタ召喚
execute at @a[tag=AssistAvatar] run summon minecraft:armor_stand ~ ~10 ~ {Tags:["AssistRadius","AvatarRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}


#分身の杖実行
execute at @a[tag=AssistAvatar,team=Blue] at @e[team=Blue,distance=..6] run particle minecraft:note ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=AssistAvatar,team=Red] at @e[team=Red,distance=..6] run particle minecraft:note ~ ~ ~ 1 1 1 1 500 normal

execute at @a[team=Blue,tag=AssistAvatar] at @e[team=Blue,distance=..6] run summon zombie ~ ~ ~ {Health:15f,Tags:["avatar2","MTentity"],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:255},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:255},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:255},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b}],Team:Blue,Silent:true,CustomName:'{"text":"デコイ"}'}

execute at @a[team=Red,tag=AssistAvatar] at @e[team=Red,distance=..6] run summon zombie ~ ~ ~ {Health:15f,Tags:["avatar2","MTentity"],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b}],Team:Red,Silent:true,CustomName:'{"text":"デコイ"}'}



#仕上げ
scoreboard players remove @a[tag=AssistAvatar] AssistMP 100
scoreboard players set @a[tag=AssistAvatar] AssistCooldown 100
scoreboard players set @a[tag=AssistAvatar] sneak 0
tag @a[tag=AssistAvatar] remove AssistAvatar
