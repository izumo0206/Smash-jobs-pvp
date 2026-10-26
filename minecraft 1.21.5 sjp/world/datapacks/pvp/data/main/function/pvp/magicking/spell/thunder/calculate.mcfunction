function main:pvp/magicking/util/cost_light
scoreboard players set @s MKRange 2
scoreboard players operation @s MKCount = @s MKLight
scoreboard players operation @s MKCount /= #6 MKCalc
scoreboard players operation @s MKRange += @s MKCount
scoreboard players operation @s MKCount = @s MKWind
scoreboard players operation @s MKCount /= #6 MKCalc
scoreboard players operation @s MKRange += @s MKCount
scoreboard players operation @s MKCount = @s MKWind
scoreboard players operation @s MKCount /= #8 MKCalc
scoreboard players operation @s MKRange += @s MKCount
scoreboard players set @s MKCast 20
execute if score @s MKLight matches 30.. if score @s MKWind matches 30.. run scoreboard players set @s MKCast 10
execute if score @s MKLight matches 50.. if score @s MKWind matches 50.. run scoreboard players set @s MKCast 5
scoreboard players set @s MKCD 100
execute if score @s MKLight matches 40.. if score @s MKWind matches 40.. run scoreboard players set @s MKCD 50
