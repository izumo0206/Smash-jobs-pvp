#実行者：麻酔弾 / 位置：今調べている点。敵プレイヤーの当たり判定に入ったら眠らせる
execute if entity @s[tag=HsBlue] as @e[type=player,team=Red,gamemode=!spectator,distance=..3] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] positioned ~0.99 ~0.99 ~0.99 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/healsniper/dart/hit
execute if entity @s[tag=HsRed] as @e[type=player,team=Blue,gamemode=!spectator,distance=..3] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] positioned ~0.99 ~0.99 ~0.99 if entity @s[dx=0,dy=0,dz=0] run function main:pvp/healsniper/dart/hit
execute if score #dhit HsCalc matches 1 run return run kill @s
#射程切れ・壁
scoreboard players remove @s HsLife 1
execute if score @s HsLife matches ..0 run return run function main:pvp/healsniper/dart/fizzle
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #main:gu_passable run return run function main:pvp/healsniper/dart/fizzle
#このtickで進む分を進み切ったら、その位置へ移動して次のtickへ
scoreboard players remove #n HsCalc 1
execute if score #n HsCalc matches ..0 positioned ^ ^ ^0.25 run return run tp @s ~ ~ ~
execute positioned ^ ^ ^0.25 run function main:pvp/healsniper/dart/step
