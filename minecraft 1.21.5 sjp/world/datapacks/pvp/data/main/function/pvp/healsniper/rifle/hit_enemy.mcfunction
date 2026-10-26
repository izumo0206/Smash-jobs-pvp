#実行者：撃たれた敵（プレイヤーまたはmob） / 位置：着弾点
scoreboard players set #hit HsCalc 1
scoreboard players set #hs HsCalc 0
summon marker ~ ~ ~ {Tags:["HsHitPt"]}
function main:pvp/healsniper/rifle/hs_check with storage main:healsniper param.common
kill @e[type=marker,tag=HsHitPt]
#ダメージ量：体 dmg / 頭 hs_dmg。far ブロックを超えたら far_dmg（頭も同じ）
data modify storage main:healsniper hit.amount set from storage main:healsniper param.rifle.dmg
execute if score #hs HsCalc matches 1 run data modify storage main:healsniper hit.amount set from storage main:healsniper param.rifle.hs_dmg
execute if score #far HsCalc matches 1.. if score #d HsCalc > #far HsCalc run data modify storage main:healsniper hit.amount set from storage main:healsniper param.rifle.far_dmg
execute if score #hs HsCalc matches 1 run function main:pvp/healsniper/rifle/dmg_hs with storage main:healsniper param.rifle
function main:pvp/healsniper/rifle/dmg with storage main:healsniper hit
function main:pvp/healsniper/fx/blood with storage main:healsniper param.common
execute as @a[tag=HsShooter] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0.9
