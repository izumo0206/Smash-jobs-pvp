#ワープ出口


#召喚
execute at @a[tag=WraithTeleport2,scores={WraithAmada=40},team=Blue] run summon allay ~ ~ ~ {CustomName:{"text":"backside2"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithbackside2","MTentity"],Team:"Blue"}
execute at @a[tag=WraithTeleport2,scores={WraithAmada=40},team=Red] run summon allay ~ ~ ~ {CustomName:{"text":"backside2"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithbackside2","MTentity"],Team:"Red"}

execute as @a[tag=WraithTeleport2,scores={WraithAmada=0}] run gamemode survival @s


scoreboard players set @a[tag=WraithTeleport2] WraithCooldown 40
