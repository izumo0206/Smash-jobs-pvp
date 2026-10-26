function main:pvp/magicking/util/cost_earth
scoreboard players operation @s MKCount = @s MKEarth
scoreboard players operation @s MKCount /= #6 MKCalc
scoreboard players set @s MKDuration 5
scoreboard players operation @s MKPower = @s MKCount
scoreboard players operation @s MKPower *= #2 MKCalc
scoreboard players add @s MKPower 2
execute if score @s MKPower matches 21.. run scoreboard players set @s MKPower 20
scoreboard players operation @s MKCount *= #5 MKCalc
scoreboard players operation @s MKDuration += @s MKCount
execute if score @s MKDuration matches 31.. run scoreboard players set @s MKDuration 30
scoreboard players set @s MKRange 4
scoreboard players operation @s MKCount = @s MKEarth
scoreboard players operation @s MKCount /= #8 MKCalc
scoreboard players operation @s MKRange += @s MKCount
execute if score @s MKRange matches 13.. run scoreboard players set @s MKRange 12
scoreboard players set @s MKCast 20
execute if score @s MKEarth matches 30.. run scoreboard players set @s MKCast 10
execute if score @s MKEarth matches 50.. run scoreboard players set @s MKCast 5
scoreboard players set @s MKCD 100
