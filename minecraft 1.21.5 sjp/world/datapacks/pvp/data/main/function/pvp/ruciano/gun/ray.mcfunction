#0.25ブロックずつ進むレイキャスト。当たり判定内に入ったら命中
#当たり判定：弾は半径0.3ブロックの大きさ（相手の判定を0.3広げて判定）
execute if score #team RcCalc matches 1 as @e[type=player,team=Red,gamemode=!spectator,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/ruciano/gun/hit
execute if score #team RcCalc matches 2 as @e[type=player,team=Blue,gamemode=!spectator,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/ruciano/gun/hit
execute if score #team RcCalc matches 0 as @e[type=!player,type=!#main:gu_not_target,tag=!GuBomb,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/ruciano/gun/hit
execute if score #team RcCalc matches 1 as @e[type=!player,type=!#main:gu_not_target,team=!Blue,tag=!GuBomb,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/ruciano/gun/hit
execute if score #team RcCalc matches 2 as @e[type=!player,type=!#main:gu_not_target,team=!Red,tag=!GuBomb,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/ruciano/gun/hit
execute if score #hit RcCalc matches 1 run return 0

#弾の表示（0.5ブロックごと）
scoreboard players add #d RcCalc 1
scoreboard players add #tr RcCalc 1
execute if score #tr RcCalc matches 2.. run function main:pvp/ruciano/gun/trail
execute if score #tr RcCalc matches 2.. run scoreboard players set #tr RcCalc 0

scoreboard players remove #steps RcCalc 1
#壁に当たった位置に着弾エフェクト
execute if score #steps RcCalc matches 1.. positioned ^ ^ ^0.25 unless block ~ ~ ~ #main:gu_passable positioned ^ ^ ^-0.25 run particle minecraft:witch ~ ~ ~ 0.05 0.05 0.05 0.05 4 force @a
execute if score #steps RcCalc matches 1.. positioned ^ ^ ^0.25 unless block ~ ~ ~ #main:gu_passable positioned ^ ^ ^-0.25 run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.01 2 force @a
execute if score #steps RcCalc matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #main:gu_passable run function main:pvp/ruciano/gun/ray
