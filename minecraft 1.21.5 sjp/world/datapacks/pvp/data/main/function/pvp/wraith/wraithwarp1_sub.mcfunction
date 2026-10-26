#ワープ出口

#召喚
execute at @a[tag=WraithTeleport1,scores={WraithAmada=40},team=Blue] run summon allay ~ ~ ~ {CustomName:{"text":"backside1"},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["Wraithbackside1","MTentity"],Team:"Blue"}
execute at @a[tag=WraithTeleport1,scores={WraithAmada=40},team=Red] run summon allay ~ ~ ~ {Silent:1b,CustomNameVisible:1b,Team:"Red",NoAI:1b,Tags:["Wraithbackside1","MTentity"],CustomName:"backside1"}







#仕上げ


scoreboard players set @a[tag=WraithTeleport1] WraithCooldown 40
