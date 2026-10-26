#MKCountに入っている回復量を正確に加算する
execute store result score @s MKPower run data get entity @s Health 10
scoreboard players operation @s MKCount *= #10 MKCalc
scoreboard players operation @s MKPower += @s MKCount
execute store result score @s MKLevel run attribute @s minecraft:max_health get 10
execute if score @s MKPower > @s MKLevel run scoreboard players operation @s MKPower = @s MKLevel
execute store result entity @s Health float 0.1 run scoreboard players get @s MKPower
