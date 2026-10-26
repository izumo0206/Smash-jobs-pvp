#闇の罠実行

#タグ付け
execute as @a[tag=Trapper,scores={sneak=100..}] run tag @s add DarknessTrap



execute at @a[tag=DarknessTrap] run playsound minecraft:entity.wither_skeleton.ambient master @s ~ ~ ~ 10



#闇の罠設置

execute at @a[tag=DarknessTrap,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=DarknessTrap,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute at @a[team=Blue,tag=DarknessTrap] unless entity @e[distance=..6,tag=trap] run summon armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,CustomName:'[{"text":"罠"}]',NoGravity:1b,Tags:["darknesstrap","trap","MTentity"],Team:Blue}

execute at @a[team=Red,tag=DarknessTrap] unless entity @e[distance=..6,tag=trap] run summon armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,CustomName:'[{"text":"罠"}]',NoGravity:1b,Tags:["darknesstrap","trap","MTentity"],Team:Red}

#仕上げ
scoreboard players set @a[tag=DarknessTrap] sneak 0
tag @a[tag=DarknessTrap] remove DarknessTrap
