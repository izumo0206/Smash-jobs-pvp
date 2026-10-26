#オートピストル（Tec9） 1発分（数値は config.mcfunction の param.tec）
scoreboard players remove @s GuAmmoTec 1
function main:pvp/guerrilla/gun/shoot with storage main:guerrilla param.tec
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1.8
execute if score @s GuAmmoTec matches ..0 run function main:pvp/guerrilla/gun/reload/tec
