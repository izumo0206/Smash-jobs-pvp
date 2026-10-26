#実行者：絨毯爆撃の炎のmarker。炎と煙を出し、fire_interval tick ごとに範囲内の敵へダメージ
scoreboard players remove @s GuTimer 1
function main:pvp/guerrilla/reward/fire_fx with storage main:guerrilla param.carpet
scoreboard players add @s GuCount 1
execute store result score #fi GuCalc run data get storage main:guerrilla param.carpet.fire_interval
execute if score @s GuCount >= #fi GuCalc run function main:pvp/guerrilla/reward/fire_burn
execute if score @s GuTimer matches ..0 run kill @s
