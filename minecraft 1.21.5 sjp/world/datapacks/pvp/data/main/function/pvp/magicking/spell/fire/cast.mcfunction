scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.15 60 force
playsound minecraft:item.firecharge.use master @a[distance=..24] ~ ~ ~ 0.7 1
execute store result storage main:magicking power int 1 run scoreboard players get @s MKPower
function main:pvp/magicking/spell/fire/summon with storage main:magicking

#発動前の火elementで追加効果を判定
tag @s add MKDamageCaster
execute if score @s MKFire matches 20..69 if entity @s[team=Blue] as @a[team=Red,gamemode=!spectator,distance=..8] run damage @s 5 minecraft:on_fire by @a[tag=MKDamageCaster,limit=1]
execute if score @s MKFire matches 20..69 if entity @s[team=Red] as @a[team=Blue,gamemode=!spectator,distance=..8] run damage @s 5 minecraft:on_fire by @a[tag=MKDamageCaster,limit=1]
execute if score @s MKFire matches 70.. if entity @s[team=Blue] as @e[team=Red,distance=..8] run damage @s 5 minecraft:on_fire by @a[tag=MKDamageCaster,limit=1]
execute if score @s MKFire matches 70.. if entity @s[team=Red] as @e[team=Blue,distance=..8] run damage @s 5 minecraft:on_fire by @a[tag=MKDamageCaster,limit=1]
tag @s remove MKDamageCaster
execute if score @s MKFire matches 40.. run effect give @s minecraft:resistance 2 4 true

#8m以内に敵playerがいれば火+1
scoreboard players set @s MKCount 0
execute if entity @s[team=Blue] if entity @a[team=Red,gamemode=!spectator,distance=..8,limit=1] run scoreboard players set @s MKCount 1
execute if entity @s[team=Red] if entity @a[team=Blue,gamemode=!spectator,distance=..8,limit=1] run scoreboard players set @s MKCount 1
execute if score @s MKCount matches 1.. run function main:pvp/magicking/element/add_fire
