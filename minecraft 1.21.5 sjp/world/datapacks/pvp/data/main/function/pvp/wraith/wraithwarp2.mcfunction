#タグ付け
execute as @a[tag=Wraith2,scores={sneak=200..,WraithAmada=..0,WraithCooldown=..0}] run tag @s add WraithTeleport2

#直通の扉設置

execute if entity @a[tag=WraithTeleport2] run kill @e[tag=Wraithfront2]
execute if entity @a[tag=WraithTeleport2] run kill @e[tag=Wraithbackside2]

execute at @a[tag=WraithTeleport2] run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 1

execute at @a[tag=WraithTeleport2,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=WraithTeleport2,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal


execute at @a[tag=WraithTeleport2,team=Blue] run summon allay ~ ~ ~ {CustomName:{"text":"front2"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithfront2","MTentity"],Team:"Blue"}
execute at @a[tag=WraithTeleport2,team=Red] run summon allay ~ ~ ~ {CustomName:{"text":"front2"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithfront2","MTentity"],Team:"Red"}

execute as @a[tag=WraithTeleport2] run gamemode spectator @s

scoreboard players set @a[tag=WraithTeleport2] WraithAmada 140
scoreboard players set @a[tag=WraithTeleport2] WraithCooldown 100
scoreboard players set @a[tag=WraithTeleport2] sneak 0



