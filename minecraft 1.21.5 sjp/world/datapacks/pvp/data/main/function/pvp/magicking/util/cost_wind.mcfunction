scoreboard players set @s MKCost 300
scoreboard players operation @s MKCount = @s MKWind
scoreboard players operation @s MKCount /= #8 MKCalc
scoreboard players operation @s MKCount *= #30 MKCalc
scoreboard players operation @s MKCost -= @s MKCount
execute if score @s MKCost matches ..99 run scoreboard players set @s MKCost 100
