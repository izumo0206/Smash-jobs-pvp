scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
playsound minecraft:block.bubble_column.upwards_inside master @a[distance=..24] ~ ~ ~ 0.8 1

#発動地点前方に固定した縦水壁。足元を下端として上方向へ拡張する
function main:pvp/magicking/spell/water/wall_3x3
execute if score @s MKWater matches 20.. run function main:pvp/magicking/spell/water/extend_5x5
execute if score @s MKWater matches 40.. run function main:pvp/magicking/spell/water/extend_7x7
execute if score @s MKWater matches 70.. run function main:pvp/magicking/spell/water/extend_9x9

#水20で即時回復I（4）、水70で即時回復II（8）
execute if score @s MKWater matches 20..69 run effect give @s minecraft:instant_health 1 0 true
execute if score @s MKWater matches 70.. run effect give @s minecraft:instant_health 1 1 true
