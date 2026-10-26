#リセット
scoreboard players set @s dropSword 0

execute anchored eyes positioned ^ ^ ^ run function main:pvp/sword/throwsword_sub

execute as @e[tag=throwsword] at @s rotated as @a[tag=Sword] run tp ^ ^ ^

kill @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}]