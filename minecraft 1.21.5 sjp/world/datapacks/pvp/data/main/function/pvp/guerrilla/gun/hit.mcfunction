#実行者：被弾した敵（プレイヤーまたはmob） / 位置：着弾点
scoreboard players set #hit GuCalc 1
#一撃で倒れても頭蓋骨が正しい位置に落ちるよう、ダメージ前に記録する（プレイヤーのみ）
execute if entity @s[type=player] run function main:pvp/guerrilla/death/mark with storage main:guerrilla param.common
data modify storage main:guerrilla hit.amount set from storage main:guerrilla shot.dmg
data modify storage main:guerrilla hit.type set from storage main:guerrilla shot.type
#距離による減衰：far ブロックを超えたら far_dmg
execute if score #far GuCalc matches 1.. if score #d GuCalc > #far GuCalc run data modify storage main:guerrilla hit.amount set from storage main:guerrilla shot.far_dmg
#ダメージ上限（max_dmg）
scoreboard players set #skip GuCalc 0
execute if score #maxd GuCalc matches 1.. run function main:pvp/guerrilla/gun/cap
#複数の粒（ショットガン）は1射撃ぶんを合計し、撃ち終わってから1回で与える（無敵時間0.5秒で粒が消えないように）
execute unless score #skip GuCalc matches 1 if score #pel0 GuCalc matches 2.. run function main:pvp/guerrilla/gun/acc_add
execute unless score #skip GuCalc matches 1 unless score #pel0 GuCalc matches 2.. run function main:pvp/guerrilla/gun/damage with storage main:guerrilla hit
#命中音（1回の射撃につき1回）と血
execute unless score #hitsnd GuCalc matches 1 run function main:pvp/guerrilla/gun/hit_sound with storage main:guerrilla param.common
function main:pvp/guerrilla/fx/blood with storage main:guerrilla shot
