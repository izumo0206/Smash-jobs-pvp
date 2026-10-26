#ナノブースト（実行者：回復スナイパー）。狙っている方向で一番近い味方に必ず当たる。使うと消える
execute unless score @s HsNanoHave matches 1.. run return run function main:pvp/healsniper/nano/not_ready
scoreboard players set #team HsCalc 0
execute if entity @s[team=Blue] run scoreboard players set #team HsCalc 1
execute if entity @s[team=Red] run scoreboard players set #team HsCalc 2
tag @s add HsNanoUser
scoreboard players set #found HsCalc 0
#射程（ブロック）→ 0.5ブロック刻みの歩数
execute store result score #steps HsCalc run data get storage main:healsniper param.nano.range 2
execute if score #team HsCalc matches 1.. anchored eyes positioned ^ ^ ^ run function main:pvp/healsniper/nano/seek with storage main:healsniper param.nano
execute if score #found HsCalc matches 0 run return run function main:pvp/healsniper/nano/no_target
#発動
scoreboard players set @s HsNanoHave 0
clear @s *[minecraft:custom_data~{hs:"nano"}]
scoreboard players set #bs HsCalc 160
execute anchored eyes positioned ^ ^ ^ facing entity @e[type=player,tag=HsNanoTarget,limit=1] eyes run function main:pvp/healsniper/nano/beam
execute as @e[type=player,tag=HsNanoTarget] at @s run function main:pvp/healsniper/nano/apply with storage main:healsniper param.nano
tellraw @s [{text:"ナノブースト → ",color:"light_purple"},{selector:"@e[type=player,tag=HsNanoTarget]"}]
tag @e[type=player,tag=HsNanoTarget] remove HsNanoTarget
tag @s remove HsNanoUser
