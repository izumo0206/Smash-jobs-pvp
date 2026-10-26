#実行者：ナノブースト中の味方。派手なエフェクトと音を鳴らし続ける
scoreboard players remove @s HsNano 1
particle minecraft:electric_spark ~ ~1 ~ 0.6 1 0.6 0.1 4 force @a
particle minecraft:end_rod ~ ~1 ~ 0.7 1.2 0.7 0.02 2 force @a
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 0.8 0.5 0.3 2 force @a
#4tickごとに上がっていくピコピコ音、1秒ごとにうなり
scoreboard players operation #m HsCalc = @s HsNano
scoreboard players operation #m HsCalc %= #4 HsCalc
scoreboard players operation #k HsCalc = @s HsNano
scoreboard players operation #k HsCalc /= #4 HsCalc
scoreboard players operation #k HsCalc %= #4 HsCalc
execute if score #m HsCalc matches 0 if score #k HsCalc matches 3 run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 0.7 1.0
execute if score #m HsCalc matches 0 if score #k HsCalc matches 2 run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 0.7 1.26
execute if score #m HsCalc matches 0 if score #k HsCalc matches 1 run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 0.7 1.5
execute if score #m HsCalc matches 0 if score #k HsCalc matches 0 run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 0.7 2.0
scoreboard players operation #m HsCalc = @s HsNano
scoreboard players operation #m HsCalc %= #20 HsCalc
execute if score #m HsCalc matches 0 run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 1 1.6
execute if score @s HsNano matches ..0 run function main:pvp/healsniper/nano/end
