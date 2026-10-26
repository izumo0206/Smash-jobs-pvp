function main:pvp/magicking/util/cost_fire
scoreboard players operation @s MKPower = @s MKFire
scoreboard players operation @s MKPower /= #6 MKCalc
scoreboard players set @s MKDuration 5
scoreboard players operation @s MKCount = @s MKWind
scoreboard players operation @s MKCount /= #6 MKCalc
scoreboard players operation @s MKDuration += @s MKCount
scoreboard players operation @s MKCount *= #2 MKCalc
scoreboard players operation @s MKDuration += @s MKCount
execute if score @s MKDuration matches 21.. run scoreboard players set @s MKDuration 20
scoreboard players set @s MKRange 2
scoreboard players operation @s MKCount = @s MKWind
scoreboard players operation @s MKCount /= #8 MKCalc
scoreboard players operation @s MKCount *= #2 MKCalc
scoreboard players operation @s MKRange += @s MKCount
scoreboard players set @s MKCast 20
execute if score @s MKFire matches 30.. if score @s MKWind matches 30.. run scoreboard players set @s MKCast 10
execute if score @s MKFire matches 50.. if score @s MKWind matches 50.. run scoreboard players set @s MKCast 5
scoreboard players set @s MKCD 100
