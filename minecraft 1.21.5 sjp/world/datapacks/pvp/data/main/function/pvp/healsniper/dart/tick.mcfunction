#実行者：飛んでいる麻酔弾。1tickに speed ブロック（0.25ブロック刻み）進む
particle minecraft:dust{color:[0.6,0.8,1.0],scale:0.7} ~ ~ ~ 0.05 0.05 0.05 0 2 force @a
execute store result score #n HsCalc run data get storage main:healsniper param.dart.speed 4
scoreboard players set #dhit HsCalc 0
function main:pvp/healsniper/dart/step
