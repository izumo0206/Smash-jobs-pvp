execute as @a[tag=WraithTeleport2,scores={WraithAmada=0}] run gamemode survival @s

#パーティクル
execute at @a[tag=WraithTeleport2,scores={WraithAmada=0}] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute at @a[tag=WraithTeleport2,scores={WraithAmada=0}] run playsound minecraft:block.bubble_column.upwards_inside master @p ~ ~ ~ 1

#仕上げ

scoreboard players set @a[tag=WraithTeleport2] sneak 0
scoreboard players set @a[tag=WraithTeleport2] WraithCooldown 400
tag @a[tag=WraithTeleport2] add Wraith3
tag @a[tag=WraithTeleport2] remove WraithTeleport2
tag @a[tag=Wraith3] remove Wraith2