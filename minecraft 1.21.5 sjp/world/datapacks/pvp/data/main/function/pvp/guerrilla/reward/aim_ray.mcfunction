execute unless block ~ ~ ~ #main:gu_passable positioned ^ ^ ^-0.5 run return run function main:pvp/guerrilla/reward/aim_hit
scoreboard players remove #steps GuCalc 1
execute if score #steps GuCalc matches 1.. positioned ^ ^ ^0.5 run function main:pvp/guerrilla/reward/aim_ray
