#実行者：この射撃で粒が当たった相手。合計したダメージを1回で与える
execute store result storage main:guerrilla hit.amount double 0.01 run scoreboard players get @s GuAcc
data modify storage main:guerrilla hit.type set from storage main:guerrilla shot.type
function main:pvp/guerrilla/gun/damage with storage main:guerrilla hit
scoreboard players set @s GuAcc 0
tag @s remove GuAccT
