scoreboard players set @s MKDevourUse 0
execute store result score @s MKCount run data get entity @s foodLevel
execute if score @s MKCount matches 20.. run return run function main:pvp/magicking/devour/full
scoreboard players set @s MKCount 0
execute unless score @s WizardMP matches 100.. run tellraw @s {"text":"MPが足りない。","color":"red"}
execute unless score @s WizardMP matches 100.. run return 0
scoreboard players remove @s WizardMP 100
effect give @s minecraft:saturation 1 3
