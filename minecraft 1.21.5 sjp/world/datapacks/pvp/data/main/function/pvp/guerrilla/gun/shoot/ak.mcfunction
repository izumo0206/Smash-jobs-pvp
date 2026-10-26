#AK47 1発分（数値は config.mcfunction の param.ak）
scoreboard players remove @s GuAmmoAk 1
function main:pvp/guerrilla/gun/shoot with storage main:guerrilla param.ak
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.45 1.6
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 0.9 0.6
execute if score @s GuAmmoAk matches ..0 run function main:pvp/guerrilla/gun/reload/ak
