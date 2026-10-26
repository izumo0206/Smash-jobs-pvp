scoreboard players operation @s MKPrev = @s MKEarth
scoreboard players operation @s MKEarth += @s MKCount
execute if score @s MKEarth matches 73.. run scoreboard players set @s MKEarth 72
function main:pvp/magicking/notify/earth
function main:pvp/magicking/notify/check_pairs
scoreboard players set @s MKCount 0
