function main:pvp/magicking/util/cost_wind
#爆風半径: 8 + floor(風 / 8)
scoreboard players set @s MKRange 8
scoreboard players operation @s MKCount = @s MKWind
scoreboard players operation @s MKCount /= #8 MKCalc
scoreboard players operation @s MKRange += @s MKCount
#表示用爆風威力の0.5単位数: 3 + floor(風 / 6)
scoreboard players set @s MKPower 3
scoreboard players operation @s MKCount = @s MKWind
scoreboard players operation @s MKCount /= #6 MKCalc
scoreboard players operation @s MKPower += @s MKCount
#速度上昇のamplifier（風20未満では付与しない）
scoreboard players set @s MKLevel 0
execute if score @s MKWind matches 30.. run scoreboard players set @s MKLevel 1
execute if score @s MKWind matches 40.. run scoreboard players set @s MKLevel 2
execute if score @s MKWind matches 50.. run scoreboard players set @s MKLevel 3
scoreboard players set @s MKDuration 15
scoreboard players set @s MKCast 20
execute if score @s MKWind matches 30.. run scoreboard players set @s MKCast 10
execute if score @s MKWind matches 50.. run scoreboard players set @s MKCast 5
scoreboard players set @s MKCD 100
