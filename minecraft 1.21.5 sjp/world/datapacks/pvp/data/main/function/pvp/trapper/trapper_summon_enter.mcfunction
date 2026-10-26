#入口転送の罠実行

#タグ付け
execute as @a[tag=Trapper,scores={sneak=100..}] run tag @s add TeleportEnter



execute at @a[tag=TeleportEnter] run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1



#入口転送の罠設置
execute at @a[tag=TeleportEnter,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=TeleportEnter,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal


execute at @a[tag=TeleportEnter,team=Blue] unless entity @e[tag=enter] run summon allay ~ ~ ~ {CustomName:{"text":"enter"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["enter","trap","MTentity"],Team:Blue}

execute at @a[tag=TeleportEnter,team=Red] unless entity @e[tag=enter] run summon allay ~ ~ ~ {CustomName:{"text":"enter"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["enter","trap","MTentity"],Team:Red}

#仕上げ
scoreboard players set @a[tag=TeleportEnter] sneak 0
tag @a[tag=TeleportEnter] remove TeleportEnter
