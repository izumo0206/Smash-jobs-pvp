#実行者：ゲリラ兵 / 位置：視線が当たったブロックの手前
#狙いの表示（本人にだけ）
execute if score #pv GuCalc matches 1 run return run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.5} ~ ~ ~ 0.6 0.1 0.6 0 6 force @s
#爆撃を決める：既存の爆撃地点marker（reward/strike_tick）を置く
scoreboard players set #placed GuCalc 1
summon marker ~ ~ ~ {Tags:["GuStrike","GuNew"]}
scoreboard players operation @e[type=marker,tag=GuNew] GuID = @s GuID
execute if entity @s[team=Blue] run tag @e[type=marker,tag=GuNew] add GuBlue
execute if entity @s[team=Red] run tag @e[type=marker,tag=GuNew] add GuRed
execute store result score @e[type=marker,tag=GuNew] GuCount run data get storage main:guerrilla param.bombbow.count
execute store result score @e[type=marker,tag=GuNew] GuTimer run data get storage main:guerrilla param.bombbow.warn
tag @e[type=marker,tag=GuNew] remove GuNew
