scoreboard players operation @s MKPrev = @s MKWind
scoreboard players operation @s MKWind += @s MKCount
execute if score @s MKWind matches 73.. run scoreboard players set @s MKWind 72
function main:pvp/magicking/notify/wind
function main:pvp/magicking/notify/check_pairs
scoreboard players set @s MKCount 0
