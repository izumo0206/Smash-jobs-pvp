#出口の罠実行

#タグ付け
execute as @a[tag=Trapper,scores={sneak=100..}] run tag @s add TeleportExit



execute at @a[tag=Teleport] run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1



#出口の罠設置
execute at @a[tag=Teleport,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=Teleport,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute as @a[tag=Teleport] run kill @e[tag=exit]

execute at @a[tag=TeleportExit,team=Blue] unless entity @e[tag=exit] run summon allay ~ ~ ~ {CustomName:{"text":"exit"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["exit","MTentity"],Team:"Blue"}

execute at @a[tag=TeleportExit,team=Red] unless entity @e[tag=exit] run summon allay ~ ~ ~ {CustomName:{"text":"exit"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["exit","MTentity"],Team:"Red"}

#仕上げ
scoreboard players set @a[tag=TeleportExit] sneak 0
tag @a[tag=TeleportExit] remove TeleportExit
