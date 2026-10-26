#毒の罠実行

#タグ付け
execute as @a[tag=Trapper,scores={sneak=100..}] run tag @s add PoisonTrap



execute at @a[tag=PoisonTrap] run playsound minecraft:entity.phantom.ambient master @s ~ ~ ~ 0.5 2 1



#毒の罠実行
execute at @a[tag=PoisonTrap,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=PoisonTrap,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute at @a[team=Blue,tag=PoisonTrap] unless entity @e[distance=..6,tag=trap] run summon armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,CustomName:'[{"text":"罠"}]',NoGravity:1b,Tags:["poisontrap","trap","MTentity"],Team:Blue}

execute at @a[team=Red,tag=PoisonTrap] unless entity @e[distance=..6,tag=trap] run summon armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,CustomName:'[{"text":"罠"}]',NoGravity:1b,Tags:["poisontrap","trap","MTentity"],Team:Red}

#仕上げ
scoreboard players set @a[tag=PoisonTrap] sneak 0
tag @a[tag=PoisonTrap] remove PoisonTrap
