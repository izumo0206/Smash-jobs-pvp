particle minecraft:splash ~ ~ ~ 0.25 0.25 0.25 0.05 2 force
scoreboard players operation #wall_owner MKOwner = @s MKOwner
execute as @e[type=#main:magicking_projectiles,distance=..0.75] run function main:pvp/magicking/spell/water/projectile_hit
scoreboard players remove @s MKTimer 1
execute if score @s MKTimer matches ..0 run kill @s
