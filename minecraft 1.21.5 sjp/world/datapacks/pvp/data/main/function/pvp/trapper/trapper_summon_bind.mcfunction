#鈍足の罠実行

#タグ付け
execute as @a[tag=Trapper,scores={sneak=100..}] run tag @s add SlowTrap



execute at @a[tag=SlowTrap] run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1



#鈍足の罠設置
execute at @a[tag=SlowTrap,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=SlowTrap,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute at @a[team=Blue,tag=SlowTrap] unless entity @e[distance=..6,tag=trap] run summon armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,CustomName:'[{"text":"罠"}]',NoGravity:1b,Tags:["slowtrap","trap","MTentity"],Team:Blue}


execute at @a[team=Red,tag=SlowTrap] unless entity @e[distance=..6,tag=trap] run summon armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,CustomName:'[{"text":"罠"}]',NoGravity:1b,Tags:["slowtrap","trap","MTentity"],Team:Red}

#仕上げ
scoreboard players set @a[tag=SlowTrap] sneak 0
tag @a[tag=SlowTrap] remove SlowTrap
