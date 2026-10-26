#実行者：各プレイヤー。周囲で爆発が連続して見える演出
particle minecraft:explosion_emitter ~ ~ ~ 12 4 12 0 1 force @s
particle minecraft:lava ~ ~ ~ 10 3 10 0 6 force @s
particle minecraft:large_smoke ~ ~2 ~ 10 3 10 0.05 10 force @s
scoreboard players operation #m GuCalc = #nuke GuCalc
scoreboard players operation #m GuCalc %= #10 GuCalc
execute if score #m GuCalc matches 0 run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.6
execute if score #m GuCalc matches 5 run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.4
