#弾を撃つ（実行者：射手。storage main:guerrilla shot の n/dmg/steps/pellets を使う）
tag @s add GuShooter
scoreboard players reset * GuShotDmg
scoreboard players set #hitsnd GuCalc 0
scoreboard players set #team GuCalc 0
execute if entity @s[team=Blue] run scoreboard players set #team GuCalc 1
execute if entity @s[team=Red] run scoreboard players set #team GuCalc 2
execute store result score #pel GuCalc run data get storage main:guerrilla shot.pellets
scoreboard players operation #pel0 GuCalc = #pel GuCalc
#弾の表示は trail_from ブロック先から（0.25ブロック刻みの歩数に換算）
execute store result score #tfrom GuCalc run data get storage main:guerrilla param.common.trail_from 4
execute anchored eyes positioned ^ ^ ^ run function main:pvp/guerrilla/gun/pellet_loop
#ショットガンの粒の合計を与える
execute as @e[tag=GuAccT] run function main:pvp/guerrilla/gun/acc_apply
#発射エフェクト（muzzle_fx 0 で閃光と薬莢を出さない）
function main:pvp/guerrilla/gun/muzzle with storage main:guerrilla param.common
tag @a remove GuWhizzed
tag @s remove GuShooter
