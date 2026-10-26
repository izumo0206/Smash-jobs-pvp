scoreboard players operation @s MKPrev = @s MKFire
scoreboard players operation @s MKFire += @s MKCount
execute if score @s MKFire matches 73.. run scoreboard players set @s MKFire 72
function main:pvp/magicking/notify/fire
function main:pvp/magicking/notify/check_pairs
scoreboard players set @s MKCount 0
