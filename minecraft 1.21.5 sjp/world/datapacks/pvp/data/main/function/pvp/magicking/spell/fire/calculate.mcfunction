function main:pvp/magicking/util/cost_fire
scoreboard players set @s MKPower 1
scoreboard players operation @s MKCount = @s MKFire
scoreboard players operation @s MKCount /= #6 MKCalc
scoreboard players operation @s MKPower += @s MKCount
scoreboard players set @s MKCast 20
execute if score @s MKFire matches 30.. run scoreboard players set @s MKCast 10
execute if score @s MKFire matches 50.. run scoreboard players set @s MKCast 5
scoreboard players set @s MKCD 100
