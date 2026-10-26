function main:pvp/magicking/util/cost_light
scoreboard players set @s MKDuration 5
scoreboard players operation @s MKCount = @s MKLight
scoreboard players operation @s MKCount /= #6 MKCalc
scoreboard players operation @s MKCount *= #5 MKCalc
scoreboard players operation @s MKDuration += @s MKCount
scoreboard players set @s MKCast 20
execute if score @s MKLight matches 30.. run scoreboard players set @s MKCast 5
scoreboard players set @s MKCD 100
execute if score @s MKLight matches 40.. run scoreboard players set @s MKCD 20
