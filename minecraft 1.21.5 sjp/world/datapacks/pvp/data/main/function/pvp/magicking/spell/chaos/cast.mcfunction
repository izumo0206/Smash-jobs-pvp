scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
execute if score @s MKFire matches 72 if score @s MKWater matches 72 if score @s MKWind matches 72 if score @s MKEarth matches 72 if score @s MKLight matches 72 if score @s MKDark matches 72 run return run function main:pvp/magicking/spell/chaos/ultimate

tag @a remove MKChaosPool
tag @a[team=Blue,gamemode=!spectator] add MKChaosPool
tag @a[team=Red,gamemode=!spectator] add MKChaosPool
tag @s add MKChaosCaster

execute if score @s MKLight matches 10.. if score @s MKDark matches 10.. run tag @a[tag=MKChaosPool,sort=random,limit=1] add MKChaosTarget
execute if score @s MKLight matches 10.. if score @s MKDark matches 10.. run damage @a[tag=MKChaosTarget,limit=1] 5 minecraft:magic by @s
tag @a remove MKChaosTarget

execute if score @s MKLight matches 20.. if score @s MKDark matches 20.. store result score @s MKRandom run random value 1..6
execute if score @s MKLight matches 20.. if score @s MKDark matches 20.. run function main:pvp/magicking/spell/chaos/random_element

execute if score @s MKLight matches 30.. if score @s MKDark matches 30.. store result score @s MKRandom run random value 1..5
execute if score @s MKLight matches 30.. if score @s MKDark matches 30.. run function main:pvp/magicking/spell/chaos/random_effect

tag @a remove MKChaosPool
tag @a remove MKChaosTarget
tag @a remove MKChaosCaster
