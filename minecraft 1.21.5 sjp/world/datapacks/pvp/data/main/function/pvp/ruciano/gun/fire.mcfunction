#射撃処理（実行者：死神）
tag @s add RcShooter
scoreboard players remove @s RcAmmo 1
#連射速度：20tick（1秒）に1発
scoreboard players set @s RcCool 20

scoreboard players set #team RcCalc 0
execute if entity @s[team=Blue] run scoreboard players set #team RcCalc 1
execute if entity @s[team=Red] run scoreboard players set #team RcCalc 2

#拡散角計算
function main:pvp/ruciano/gun/spread
#弾道発射
execute anchored eyes positioned ^ ^ ^ run function main:pvp/ruciano/gun/pellet_rand with storage main:ruciano shot

#銃口エフェクト（死神らしい妖気・ソウル・煙）
execute anchored eyes positioned ^-0.35 ^-0.25 ^0.9 run particle minecraft:witch ~ ~ ~ 0.03 0.03 0.03 0.02 5 force @a
execute anchored eyes positioned ^-0.35 ^-0.25 ^0.9 run particle minecraft:soul_fire_flame ~ ~ ~ 0.02 0.02 0.02 0.01 2 force @a
execute anchored eyes positioned ^-0.35 ^-0.25 ^0.9 run particle minecraft:smoke ~ ~ ~ 0.03 0.03 0.03 0.01 3 force @a
execute rotated ~ 0 positioned ^ ^0.1 ^-0.2 run particle minecraft:smoke ~ ~ ~ 0.15 0.02 0.15 0.01 3 force @a

#発射音
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 2.0
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.35 1.8

tag @s remove RcShooter

#弾切れ時は自動リロード開始
execute if score @s RcAmmo matches ..0 run function main:pvp/ruciano/gun/reload
