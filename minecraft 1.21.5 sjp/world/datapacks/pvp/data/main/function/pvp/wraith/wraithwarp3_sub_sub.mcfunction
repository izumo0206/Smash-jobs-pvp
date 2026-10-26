execute as @a[tag=WraithTeleport3,scores={WraithAmada=0}] run gamemode survival @s

#パーティクル
execute at @a[tag=WraithTeleport3,scores={WraithAmada=0}] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute at @a[tag=WraithTeleport3,scores={WraithAmada=0}] run playsound minecraft:block.bubble_column.upwards_inside master @p ~ ~ ~ 1

#仕上げ

scoreboard players set @a[tag=WraithTeleport3] sneak 0
scoreboard players set @a[tag=WraithTeleport3] WraithCooldown 400
tag @a[tag=WraithTeleport3] add Wraith1
tag @a[tag=WraithTeleport3] remove WraithTeleport3
tag @a[tag=Wraith1] remove Wraith3