function main:pvp/magicking/util/cost_dark
scoreboard players set @s MKLevel 0
execute if score @s MKDark matches 15.. run scoreboard players set @s MKLevel 1
execute if score @s MKDark matches 30.. run scoreboard players set @s MKLevel 2
execute if score @s MKDark matches 45.. run scoreboard players set @s MKLevel 3
execute if score @s MKDark matches 60.. run scoreboard players set @s MKLevel 4
execute if score @s MKDark matches 75.. run scoreboard players set @s MKLevel 5
scoreboard players set @s MKDuration 5
scoreboard players set @s MKCast 20
execute if score @s MKDark matches 30.. run scoreboard players set @s MKCast 10
execute if score @s MKDark matches 50.. run scoreboard players set @s MKCast 5
scoreboard players set @s MKCD 100
scoreboard players operation @s MKCount = @s MKDark
scoreboard players operation @s MKCount /= #8 MKCalc
scoreboard players operation @s MKCount *= #5 MKCalc
scoreboard players operation @s MKCD -= @s MKCount
