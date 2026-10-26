scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
scoreboard players set #ice_targets MKCalc 0
scoreboard players set #ice_slow MKCalc 0
execute if score @s MKWater matches 20.. if score @s MKEarth matches 20.. run scoreboard players set #ice_slow MKCalc 1
execute if score @s MKWater matches 70.. if score @s MKEarth matches 70.. if entity @s[team=Blue] as @a[team=Red,gamemode=!spectator] at @s run function main:pvp/magicking/spell/ice/target
execute if score @s MKWater matches 70.. if score @s MKEarth matches 70.. if entity @s[team=Red] as @a[team=Blue,gamemode=!spectator] at @s run function main:pvp/magicking/spell/ice/target
execute store result storage main:magicking range int 1 run scoreboard players get @s MKRange
execute if score @s MKWater matches ..69 if entity @s[team=Blue] run function main:pvp/magicking/spell/ice/target_blue with storage main:magicking
execute if score @s MKWater matches ..69 if entity @s[team=Red] run function main:pvp/magicking/spell/ice/target_red with storage main:magicking
execute if score @s MKWater matches 70.. if score @s MKEarth matches ..69 if entity @s[team=Blue] run function main:pvp/magicking/spell/ice/target_blue with storage main:magicking
execute if score @s MKWater matches 70.. if score @s MKEarth matches ..69 if entity @s[team=Red] run function main:pvp/magicking/spell/ice/target_red with storage main:magicking
execute if score #ice_targets MKCalc matches 1.. run scoreboard players set @s MKCount 1
execute if score #ice_targets MKCalc matches 1.. run function main:pvp/magicking/element/add_water
execute if score #ice_targets MKCalc matches 1.. run scoreboard players set @s MKCount 1
execute if score #ice_targets MKCalc matches 1.. run function main:pvp/magicking/element/add_earth
