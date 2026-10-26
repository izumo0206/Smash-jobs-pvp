function main:pvp/guerrilla/gun/pellet_rand with storage main:guerrilla shot
scoreboard players remove #pel GuCalc 1
execute if score #pel GuCalc matches 1.. run function main:pvp/guerrilla/gun/pellet_loop
