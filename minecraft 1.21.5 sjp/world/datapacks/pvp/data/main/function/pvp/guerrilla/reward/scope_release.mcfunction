#望遠鏡を離した瞬間（実行者：ゲリラ兵）。見ていた地点に爆撃を決める
tag @s remove GuScoping
execute unless score @s GuBombUse matches 1.. run return 0
execute unless items entity @s weapon.* *[minecraft:custom_data~{gu:"bombscope"}] run return 0
scoreboard players set #pv GuCalc 0
scoreboard players set #placed GuCalc 0
function main:pvp/guerrilla/reward/aim_start
execute if score #placed GuCalc matches 0 run return run function main:pvp/guerrilla/reward/aim_fail
scoreboard players remove @s GuBombUse 1
execute if score @s GuBombUse matches ..0 run clear @s *[minecraft:custom_data~{gu:"bombscope"}]
playsound minecraft:item.goat_horn.sound.1 player @a ~ ~ ~ 1 1.2
tellraw @a [{selector:"@s"},{text:"が爆撃を要請した",color:"red"}]
title @s actionbar [{text:"爆撃要請 残り ",color:"gold"},{score:{name:"@s",objective:"GuBombUse"},color:"white"},{text:"回",color:"gold"}]
