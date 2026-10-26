#撃った人から味方までの光の線
particle minecraft:end_rod ~ ~ ~ 0.02 0.02 0.02 0 1 force @a
particle minecraft:dust{color:[0.9,0.4,1.0],scale:0.8} ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @e[type=player,tag=HsNanoTarget,distance=..2] run return 0
scoreboard players remove #bs HsCalc 1
execute if score #bs HsCalc matches 1.. positioned ^ ^ ^0.5 run function main:pvp/healsniper/nano/beam
