execute as @a[tag=WraithTeleport1,scores={WraithAmada=0}] run gamemode survival @s

#パーティクル
execute at @a[tag=WraithTeleport1,scores={WraithAmada=0}] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute at @a[tag=WraithTeleport1,scores={WraithAmada=0}] run playsound minecraft:block.bubble_column.upwards_inside master @p ~ ~ ~ 1

#仕上げ

scoreboard players set @a[tag=WraithTeleport1] sneak 0
scoreboard players set @a[tag=WraithTeleport1] WraithCooldown 400
tag @a[tag=WraithTeleport1] add Wraith2
tag @a[tag=WraithTeleport1] remove WraithTeleport1
tag @a[tag=Wraith2] remove Wraith1