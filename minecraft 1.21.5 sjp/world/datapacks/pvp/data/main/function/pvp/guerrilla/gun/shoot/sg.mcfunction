#ショットガン 1発分（数値は config.mcfunction の param.sg）
scoreboard players remove @s GuAmmoSg 1
function main:pvp/guerrilla/gun/shoot with storage main:guerrilla param.sg
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.6 1.8
execute if score @s GuAmmoSg matches ..0 run function main:pvp/guerrilla/gun/reload/sg
