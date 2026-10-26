#タグ付け
execute as @a[tag=Wraith1,scores={sneak=200..,WraithAmada=..0,WraithCooldown=..0}] run tag @s add WraithTeleport1

#直通の扉設置

execute if entity @a[tag=WraithTeleport1] run kill @e[tag=Wraithfront1]
execute if entity @a[tag=WraithTeleport1] run kill @e[tag=Wraithbackside1]

execute at @a[tag=WraithTeleport1] run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 1

execute at @a[tag=WraithTeleport1,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=WraithTeleport1,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal


execute at @a[tag=WraithTeleport1,team=Blue] run summon allay ~ ~ ~ {CustomName:{"text":"front1"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithfront1","MTentity"],Team:"Blue"}
execute at @a[tag=WraithTeleport1,team=Red] run summon allay ~ ~ ~ {CustomName:{"text":"front1"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithfront1","MTentity"],Team:"Red"}

execute as @a[tag=WraithTeleport1] run gamemode spectator @s

scoreboard players set @a[tag=WraithTeleport1] WraithAmada 140
scoreboard players set @a[tag=WraithTeleport1] WraithCooldown 100
scoreboard players set @a[tag=WraithTeleport1] sneak 0

