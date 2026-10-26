scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
playsound minecraft:item.firecharge.use master @a[distance=..32] ~ ~ ~ 0.8 0.8
scoreboard players set #flame_targets MKCalc 0
scoreboard players operation #flame_radius MKCalc = @s MKPower
scoreboard players operation #flame_timer MKCalc = @s MKDuration
scoreboard players operation #flame_timer MKCalc *= #20 MKCalc
scoreboard players set #flame_slow MKCalc 0
execute if score @s MKFire matches 40.. if score @s MKWind matches 40.. run scoreboard players set #flame_slow MKCalc 1
execute if score @s MKFire matches 20.. if score @s MKWind matches 20.. run effect give @s minecraft:fire_resistance 30 0 true

execute if score @s MKFire matches 70.. if score @s MKWind matches 70.. if entity @s[team=Blue] as @a[team=Red,gamemode=!spectator] at @s run function main:pvp/magicking/spell/flame/target
execute if score @s MKFire matches 70.. if score @s MKWind matches 70.. if entity @s[team=Red] as @a[team=Blue,gamemode=!spectator] at @s run function main:pvp/magicking/spell/flame/target
execute store result storage main:magicking range int 1 run scoreboard players get @s MKRange
execute if score @s MKFire matches ..69 if entity @s[team=Blue] run function main:pvp/magicking/spell/flame/target_blue with storage main:magicking
execute if score @s MKFire matches ..69 if entity @s[team=Red] run function main:pvp/magicking/spell/flame/target_red with storage main:magicking
execute if score @s MKFire matches 70.. if score @s MKWind matches ..69 if entity @s[team=Blue] run function main:pvp/magicking/spell/flame/target_blue with storage main:magicking
execute if score @s MKFire matches 70.. if score @s MKWind matches ..69 if entity @s[team=Red] run function main:pvp/magicking/spell/flame/target_red with storage main:magicking

execute if score #flame_targets MKCalc matches 1.. run scoreboard players set @s MKCount 1
execute if score #flame_targets MKCalc matches 1.. run function main:pvp/magicking/element/add_fire
execute if score #flame_targets MKCalc matches 1.. run scoreboard players set @s MKCount 1
execute if score #flame_targets MKCalc matches 1.. run function main:pvp/magicking/element/add_wind
