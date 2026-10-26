scoreboard players remove @s HsReload 1
execute if score @s HsReload matches 1.. run return 0
execute store result score @s HsAmmo run data get storage main:healsniper param.rifle.mag
playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 0.8 0.9
