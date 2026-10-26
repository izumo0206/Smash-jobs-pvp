#SMG（P90） 1発分（数値は config.mcfunction の param.p90）
scoreboard players remove @s GuAmmoP90 1
function main:pvp/guerrilla/gun/shoot with storage main:guerrilla param.p90
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.5 2.0
execute if score @s GuAmmoP90 matches ..0 run function main:pvp/guerrilla/gun/reload/p90
