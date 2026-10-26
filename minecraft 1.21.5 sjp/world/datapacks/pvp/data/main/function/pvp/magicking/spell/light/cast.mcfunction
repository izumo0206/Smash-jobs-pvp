scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
tag @a remove MKSpellTarget
execute if entity @s[team=Blue] if score @s MKLight matches ..19 run tag @a[team=Red,gamemode=!spectator,sort=random,limit=1] add MKSpellTarget
execute if entity @s[team=Red] if score @s MKLight matches ..19 run tag @a[team=Blue,gamemode=!spectator,sort=random,limit=1] add MKSpellTarget
execute if entity @s[team=Blue] if score @s MKLight matches 20..69 run tag @a[team=Red,gamemode=!spectator,sort=random,limit=2] add MKSpellTarget
execute if entity @s[team=Red] if score @s MKLight matches 20..69 run tag @a[team=Blue,gamemode=!spectator,sort=random,limit=2] add MKSpellTarget
execute if entity @s[team=Blue] if score @s MKLight matches 70.. run tag @a[team=Red,gamemode=!spectator] add MKSpellTarget
execute if entity @s[team=Red] if score @s MKLight matches 70.. run tag @a[team=Blue,gamemode=!spectator] add MKSpellTarget
execute store result storage main:magicking duration int 1 run scoreboard players get @s MKDuration
function main:pvp/magicking/spell/light/apply with storage main:magicking
execute if score @s MKLight matches 50.. run effect give @s minecraft:invisibility 10 0 true
execute if score @s MKLight matches 70.. run scoreboard players set @s MKCount 20
execute if score @s MKLight matches 70.. run function main:pvp/magicking/util/heal
tag @a remove MKSpellTarget

#8m以内に敵playerがいなければ光+1
scoreboard players set @s MKCount 0
execute if entity @s[team=Blue] unless entity @a[team=Red,gamemode=!spectator,distance=..8,limit=1] run scoreboard players set @s MKCount 1
execute if entity @s[team=Red] unless entity @a[team=Blue,gamemode=!spectator,distance=..8,limit=1] run scoreboard players set @s MKCount 1
execute if score @s MKCount matches 1.. run function main:pvp/magicking/element/add_light
