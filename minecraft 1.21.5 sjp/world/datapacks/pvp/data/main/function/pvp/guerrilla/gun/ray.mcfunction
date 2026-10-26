#0.25ブロックずつ進むレイキャスト。当たり判定内に入ったら命中
#当たり判定：弾は半径0.3ブロックの大きさ（相手の当たり判定を各方向に0.3広げて判定。プレイヤーの横幅0.6 → 実質1.2）
#  半径 r を変えるときは、下の2つの positioned を「~(r-1)」と「~(1-2r)」にする（r=0.3 なら ~-0.7 と ~0.4。元の点判定は ~-0.99 と ~0.99）
#対象：敵チームのプレイヤーと、自分のチーム以外のmob（防具立て・マーカー・飛び道具などは #main:gu_not_target で除外）
execute if score #team GuCalc matches 1 as @e[type=player,team=Red,gamemode=!spectator,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #team GuCalc matches 2 as @e[type=player,team=Blue,gamemode=!spectator,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #team GuCalc matches 0 as @e[type=!player,type=!#main:gu_not_target,tag=!GuBomb,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #team GuCalc matches 1 as @e[type=!player,type=!#main:gu_not_target,team=!Blue,tag=!GuBomb,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #team GuCalc matches 2 as @e[type=!player,type=!#main:gu_not_target,team=!Red,tag=!GuBomb,distance=..3] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.4 ~0.4 ~0.4 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/guerrilla/gun/hit
execute if score #hit GuCalc matches 1 run return 0
#弾の表示（全員に見える小さな弾。trail_from ブロック先から0.5ブロックごと）
scoreboard players add #d GuCalc 1
scoreboard players add #tr GuCalc 1
execute if score #tr GuCalc matches 2.. if score #d GuCalc >= #tfrom GuCalc run function main:pvp/guerrilla/gun/trail with storage main:guerrilla param.common
execute if score #tr GuCalc matches 2.. run scoreboard players set #tr GuCalc 0
scoreboard players remove #steps GuCalc 1
#壁に当たった位置に小さな着弾エフェクト
execute if score #steps GuCalc matches 1.. positioned ^ ^ ^0.25 unless block ~ ~ ~ #main:gu_passable positioned ^ ^ ^-0.25 run particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0.1 4 force @a
execute if score #steps GuCalc matches 1.. positioned ^ ^ ^0.25 unless block ~ ~ ~ #main:gu_passable positioned ^ ^ ^-0.25 run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.01 2 force @a
execute if score #steps GuCalc matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #main:gu_passable run function main:pvp/guerrilla/gun/ray
