#1発撃つ（実行者：射手）。味方に当たれば回復、敵に当たればダメージ
tag @s add HsShooter
scoreboard players set #team HsCalc 0
execute if entity @s[team=Blue] run scoreboard players set #team HsCalc 1
execute if entity @s[team=Red] run scoreboard players set #team HsCalc 2
execute store result score #steps HsCalc run data get storage main:healsniper param.rifle.range 4
execute store result score #tfrom HsCalc run data get storage main:healsniper param.common.trail_from 4
scoreboard players set #hit HsCalc 0
scoreboard players set #d HsCalc 0
scoreboard players set #tr HsCalc 0
execute anchored eyes positioned ^ ^ ^ run function main:pvp/healsniper/rifle/ray
#発射エフェクト：右下の銃口付近に小さな炎と火花（閃光はなし）。足元に反動の煙
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:small_flame ~ ~ ~ 0.03 0.03 0.03 0.01 4 force @a
execute anchored eyes positioned ^-0.35 ^-0.3 ^1.1 run particle minecraft:electric_spark ~ ~ ~ 0.03 0.03 0.03 0.08 4 force @a
execute rotated ~ 0 positioned ^ ^0.1 ^-0.3 run particle minecraft:dust_plume ~ ~ ~ 0.3 0.02 0.3 0.03 4 force @a
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.6 1.7
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 1.2 0.5
tag @s remove HsShooter
