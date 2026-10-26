#実行者：被弾した敵（プレイヤーまたはmob） / 位置：着弾点
scoreboard players set #hit RcCalc 1

#距離に応じた減衰（10ブロックごとに20%減）
# #d RcCalc は0.25ブロック刻みの歩数
# 0〜10m (0..40): 通常10, HS18 (100%)
# 10〜20m (41..80): 通常8, HS14.4 (80%)
# 20〜30m (81..120): 通常6, HS10.8 (60%)
# 30〜40m (121..): 通常4, HS7.2 (40%)
data modify storage main:ruciano hit.amount set value 10
data modify storage main:ruciano hit.hs_amount set value 18
execute if score #d RcCalc matches 41..80 run data modify storage main:ruciano hit.amount set value 8
execute if score #d RcCalc matches 41..80 run data modify storage main:ruciano hit.hs_amount set value 14.4
execute if score #d RcCalc matches 81..120 run data modify storage main:ruciano hit.amount set value 6
execute if score #d RcCalc matches 81..120 run data modify storage main:ruciano hit.hs_amount set value 10.8
execute if score #d RcCalc matches 121.. run data modify storage main:ruciano hit.amount set value 4
execute if score #d RcCalc matches 121.. run data modify storage main:ruciano hit.hs_amount set value 7.2

#ヘッドショット判定（目の高さから0.45ブロック以内）
summon marker ~ ~ ~ {Tags:["RcHitPt"]}
execute at @s anchored eyes positioned ^ ^ ^ if entity @e[type=marker,tag=RcHitPt,distance=..0.45] run function main:pvp/ruciano/gun/headshot
kill @e[type=marker,tag=RcHitPt]

#ダメージ適用（ノックバックあり、クールダウン貫通）
function main:pvp/ruciano/gun/damage with storage main:ruciano hit

#着弾演出（魔女パーティクルとクリティカル、ヒット音）
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0.05 4 force @a
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.2 4 force @a
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 0.8 1.4
