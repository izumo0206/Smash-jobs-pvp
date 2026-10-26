#タグ付け
execute as @a[tag=Wraith3,scores={sneak=200..,WraithAmada=..0,WraithCooldown=..0}] run tag @s add WraithTeleport3

#直通の扉設置

execute if entity @a[tag=WraithTeleport3] run kill @e[tag=Wraithfront3]
execute if entity @a[tag=WraithTeleport3] run kill @e[tag=Wraithbackside3]

execute at @a[tag=WraithTeleport3] run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 1

execute at @a[tag=WraithTeleport3,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=WraithTeleport3,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal


execute at @a[tag=WraithTeleport3,team=Blue] run summon allay ~ ~ ~ {CustomName:{"text":"front3"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithfront3","MTentity"],Team:"Blue"}
execute at @a[tag=WraithTeleport3,team=Red] run summon allay ~ ~ ~ {CustomName:{"text":"front3"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithfront3","MTentity"],Team:"Red"}

execute as @a[tag=WraithTeleport3] run gamemode spectator @s

scoreboard players set @a[tag=WraithTeleport3] WraithAmada 140
scoreboard players set @a[tag=WraithTeleport3] WraithCooldown 100
scoreboard players set @a[tag=WraithTeleport3] sneak 0




