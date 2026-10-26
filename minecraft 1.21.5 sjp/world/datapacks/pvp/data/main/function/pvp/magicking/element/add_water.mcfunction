scoreboard players operation @s MKPrev = @s MKWater
scoreboard players operation @s MKWater += @s MKCount
execute if score @s MKWater matches 73.. run scoreboard players set @s MKWater 72
function main:pvp/magicking/notify/water
function main:pvp/magicking/notify/check_pairs
scoreboard players set @s MKCount 0
