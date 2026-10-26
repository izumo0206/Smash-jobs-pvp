#Garill 1発分（数値は config.mcfunction の param.gl）
scoreboard players remove @s GuAmmoGl 1
function main:pvp/guerrilla/gun/shoot with storage main:guerrilla param.gl
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.7 1.3
execute if score @s GuAmmoGl matches ..0 run function main:pvp/guerrilla/gun/reload/gl
