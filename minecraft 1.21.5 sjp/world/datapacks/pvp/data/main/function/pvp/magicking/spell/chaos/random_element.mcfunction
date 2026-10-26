scoreboard players set @s MKCount 5
execute if score @s MKRandom matches 1 run function main:pvp/magicking/element/add_fire
scoreboard players set @s MKCount 5
execute if score @s MKRandom matches 2 run function main:pvp/magicking/element/add_water
scoreboard players set @s MKCount 5
execute if score @s MKRandom matches 3 run function main:pvp/magicking/element/add_wind
scoreboard players set @s MKCount 5
execute if score @s MKRandom matches 4 run function main:pvp/magicking/element/add_earth
scoreboard players set @s MKCount 5
execute if score @s MKRandom matches 5 run function main:pvp/magicking/element/add_light
scoreboard players set @s MKCount 5
execute if score @s MKRandom matches 6 run function main:pvp/magicking/element/add_dark
tellraw @s ["",{"text":"[混沌] ランダムなelementを5獲得した。","color":"dark_purple"}]
