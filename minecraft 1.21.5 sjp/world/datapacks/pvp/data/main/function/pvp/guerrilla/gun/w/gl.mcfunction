#Garill：フルオート（数値は config.mcfunction の param.gl）
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 3 run return 0
function main:pvp/guerrilla/gun/rate with storage main:guerrilla param.gl
execute unless score @s GuRate matches 1200.. run return 0
scoreboard players remove @s GuRate 1200
execute if score @s GuAmmoGl matches ..0 run return run function main:pvp/guerrilla/gun/reload/gl
function main:pvp/guerrilla/gun/shoot/gl
