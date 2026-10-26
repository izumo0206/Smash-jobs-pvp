scoreboard players operation @s MKPrev = @s MKDark
scoreboard players operation @s MKDark += @s MKCount
execute if score @s MKDark matches 73.. run scoreboard players set @s MKDark 72
function main:pvp/magicking/notify/dark
function main:pvp/magicking/notify/check_pairs
scoreboard players set @s MKCount 0
