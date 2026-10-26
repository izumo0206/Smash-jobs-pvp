scoreboard players operation @s MKPrev = @s MKLight
scoreboard players operation @s MKLight += @s MKCount
execute if score @s MKLight matches 73.. run scoreboard players set @s MKLight 72
function main:pvp/magicking/notify/light
function main:pvp/magicking/notify/check_pairs
scoreboard players set @s MKCount 0
