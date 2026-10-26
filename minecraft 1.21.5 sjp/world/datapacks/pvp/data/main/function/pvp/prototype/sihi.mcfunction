#リセット
scoreboard players set @s proto_Sihi 0

execute at @a[tag=Prototype] run playsound minecraft:entity.slime.jump master @a[distance=..6] ~ ~ ~ 5

execute anchored eyes positioned ^ ^ ^ run function main:pvp/prototype/sihi_sub

execute as @e[tag=protosihi] at @s rotated as @p[tag=Prototype] run tp @s ~ ~ ~ ~ ~

kill @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}}]