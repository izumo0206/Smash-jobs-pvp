scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
scoreboard players set #thunder_targets MKCalc 0
scoreboard players set #thunder_dark MKCalc 0
execute if score @s MKLight matches 20.. if score @s MKWind matches 20.. run scoreboard players set #thunder_dark MKCalc 1
execute if score @s MKLight matches 70.. if score @s MKWind matches 70.. if entity @s[team=Blue] as @a[team=Red,gamemode=!spectator,sort=random,limit=1] at @s run function main:pvp/magicking/spell/thunder/target
execute if score @s MKLight matches 70.. if score @s MKWind matches 70.. if entity @s[team=Red] as @a[team=Blue,gamemode=!spectator,sort=random,limit=1] at @s run function main:pvp/magicking/spell/thunder/target
execute store result storage main:magicking range int 1 run scoreboard players get @s MKRange
execute if score @s MKLight matches ..69 if entity @s[team=Blue] run function main:pvp/magicking/spell/thunder/target_blue with storage main:magicking
execute if score @s MKLight matches ..69 if entity @s[team=Red] run function main:pvp/magicking/spell/thunder/target_red with storage main:magicking
execute if score @s MKLight matches 70.. if score @s MKWind matches ..69 if entity @s[team=Blue] run function main:pvp/magicking/spell/thunder/target_blue with storage main:magicking
execute if score @s MKLight matches 70.. if score @s MKWind matches ..69 if entity @s[team=Red] run function main:pvp/magicking/spell/thunder/target_red with storage main:magicking
scoreboard players operation #element_gain MKCalc = #thunder_targets MKCalc
scoreboard players operation @s MKCount = #element_gain MKCalc
execute if score @s MKCount matches 1.. run function main:pvp/magicking/element/add_light
scoreboard players operation @s MKCount = #element_gain MKCalc
execute if score @s MKCount matches 1.. run function main:pvp/magicking/element/add_wind
