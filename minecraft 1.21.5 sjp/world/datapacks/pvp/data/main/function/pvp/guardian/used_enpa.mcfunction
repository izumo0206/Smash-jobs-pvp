#エンパ使用時
execute as @a[tag=Guardian,scores={ender_pearl=1..}] run tag @s add Enderpearl

#透明化
effect give @a[tag=Enderpearl] minecraft:invisibility 3 1 true

scoreboard players set @a[tag=Enderpearl] ender_pearl 0

#帰宅点
execute as @e[tag=BackEnderPearl] run kill @s

execute anchored eyes positioned ^ ^ ^ run function main:pvp/guardian/used_enpa_sub

execute as @e[tag=BackEnderPearl] at @s rotated as @a[tag=Enderpearl] run tp ^ ^ ^

execute as @a[tag=Enderpearl] run tag @s remove Enderpearl