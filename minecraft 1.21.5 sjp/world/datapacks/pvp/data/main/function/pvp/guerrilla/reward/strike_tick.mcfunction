#実行者：爆撃地点のmarker（望遠鏡で決めた地点）。警告表示の後、間隔をあけて爆撃（回数・間隔・威力は config の param.bombbow）
scoreboard players remove @s GuTimer 1
particle minecraft:dust{color:[1.0,0.1,0.1],scale:2.0} ~ ~0.2 ~ 2 0 2 0 4 force
execute if score @s GuTimer matches 1.. run return 0
function main:pvp/guerrilla/fx/explode with storage main:guerrilla param.bombbow
scoreboard players remove @s GuCount 1
execute store result score @s GuTimer run data get storage main:guerrilla param.bombbow.interval
execute if score @s GuCount matches ..0 run kill @s
