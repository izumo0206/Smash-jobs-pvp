function main:pvp/magicking/util/cost_water
scoreboard players set @s MKDuration 2
scoreboard players operation @s MKCount = @s MKWater
scoreboard players operation @s MKCount /= #6 MKCalc
scoreboard players operation @s MKDuration += @s MKCount
#水壁サイズ
scoreboard players set @s MKRange 3
execute if score @s MKWater matches 20.. run scoreboard players set @s MKRange 5
execute if score @s MKWater matches 40.. run scoreboard players set @s MKRange 7
execute if score @s MKWater matches 70.. run scoreboard players set @s MKRange 9
#発動時回復量
scoreboard players set @s MKPower 0
execute if score @s MKWater matches 20.. run scoreboard players set @s MKPower 4
execute if score @s MKWater matches 70.. run scoreboard players set @s MKPower 8
scoreboard players set @s MKCast 20
execute if score @s MKWater matches 30.. run scoreboard players set @s MKCast 10
execute if score @s MKWater matches 50.. run scoreboard players set @s MKCast 5
scoreboard players set @s MKCD 100
