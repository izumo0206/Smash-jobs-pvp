#ワープ出口


#召喚
execute at @a[tag=WraithTeleport3,scores={WraithAmada=40},team=Blue] run summon allay ~ ~ ~ {CustomName:{"text":"backside3"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithbackside3","MTentity"],Team:"Blue"}
execute at @a[tag=WraithTeleport3,scores={WraithAmada=40},team=Red] run summon allay ~ ~ ~ {CustomName:{"text":"backside3"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithbackside3","MTentity"],Team:"Red"}

scoreboard players set @a[tag=WraithTeleport3] WraithCooldown 40
