#リボルバー 1発分（数値は config.mcfunction の param.rv）
scoreboard players remove @s GuAmmoRv 1
function main:pvp/guerrilla/gun/shoot with storage main:guerrilla param.rv
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 2.0
execute if score @s GuAmmoRv matches ..0 run function main:pvp/guerrilla/gun/reload/rv
