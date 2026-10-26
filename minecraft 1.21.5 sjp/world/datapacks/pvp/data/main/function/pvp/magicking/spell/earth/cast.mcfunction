scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
playsound minecraft:block.stone.break master @a[distance=..24] ~ ~ ~ 0.8 0.7
scoreboard players set @s MKCount 0
execute store result storage main:magicking range int 1 run scoreboard players get @s MKRange
function main:pvp/magicking/spell/earth/particle with storage main:magicking
execute store result storage main:magicking power int 1 run scoreboard players get @s MKPower
execute store result storage main:magicking duration int 1 run scoreboard players get @s MKDuration
tag @s add MKDamageCaster
function main:pvp/magicking/spell/earth/apply with storage main:magicking
tag @s remove MKDamageCaster
