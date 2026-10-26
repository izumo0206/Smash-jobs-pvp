execute as @p[tag=Dusk,distance=..3,sort=nearest,limit=1] at @s run function main:pvp/dusk/projectile/launch
execute if entity @p[tag=Dusk,distance=..3,sort=nearest,limit=1] run kill @s
