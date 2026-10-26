#狙いの線に沿って0.5ブロックずつ進み、aim ブロック以内にいる味方（自分以外）を探す
$execute if score #team HsCalc matches 1 as @e[type=player,team=Blue,tag=!HsNanoUser,gamemode=!spectator,distance=..$(aim),sort=nearest,limit=1] run function main:pvp/healsniper/nano/found
$execute if score #team HsCalc matches 2 as @e[type=player,team=Red,tag=!HsNanoUser,gamemode=!spectator,distance=..$(aim),sort=nearest,limit=1] run function main:pvp/healsniper/nano/found
execute if score #found HsCalc matches 1 run return 0
scoreboard players remove #steps HsCalc 1
execute if score #steps HsCalc matches 1.. positioned ^ ^ ^0.5 run function main:pvp/healsniper/nano/seek with storage main:healsniper param.nano
