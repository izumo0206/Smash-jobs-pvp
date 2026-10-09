#発射エフェクト（実行者：射手）。撃った本人の視界は右下の銃口付近だけ、周りのプレイヤーには派手に見せる
$scoreboard players set #mz GuCalc $(muzzle_fx)
#本人：右下に火花と小さな炎（視界の中央にはかからない）
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:small_flame ~ ~ ~ 0.03 0.03 0.03 0.01 4 force @a
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:electric_spark ~ ~ ~ 0.03 0.03 0.03 0.08 4 force @a
#周り：銃口の炎・煙（本人には表示しない。閃光はなし）
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.2 run particle minecraft:flame ~ ~ ~ 0.06 0.06 0.06 0.04 6 force @a[tag=!GuShooter]
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:smoke ~ ~ ~ 0.08 0.05 0.08 0.02 4 force @a[tag=!GuShooter]
#薬莢：右側にこぼれ落ちる（全員）
$execute if score #mz GuCalc matches 1 anchored eyes positioned ^-0.6 ^-0.35 ^0.6 run particle minecraft:item{item:{id:"$(shell)"}} ~ ~ ~ 0.02 0.02 0.02 0.06 1 force @a
#反動で足元から煙が舞う（本人にも見える。視界の下側なので邪魔にならない。量は recoil_smoke、0 で出さない）
$scoreboard players set #rs GuCalc $(recoil_smoke)
execute if score #rs GuCalc matches ..0 run return 0
$execute rotated ~ 0 positioned ^ ^0.1 ^-0.2 run particle minecraft:dust_plume ~ ~ ~ 0.3 0.02 0.3 0.03 $(recoil_smoke) force @a
$execute rotated ~ 0 positioned ^ ^0.05 ^-0.4 run particle minecraft:poof ~ ~ ~ 0.25 0.02 0.25 0.02 $(recoil_smoke) force @a
