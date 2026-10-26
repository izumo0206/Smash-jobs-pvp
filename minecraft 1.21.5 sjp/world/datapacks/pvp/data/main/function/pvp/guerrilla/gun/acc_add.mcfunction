#実行者：粒が当たった相手。この射撃の合計（GuAcc、×100）に足す
execute store result score #amt GuCalc run data get storage main:guerrilla hit.amount 100
scoreboard players operation @s GuAcc += #amt GuCalc
tag @s add GuAccT
