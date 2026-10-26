#AK47：フルオート（数値は config.mcfunction の param.ak）
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 2 run return 0
function main:pvp/guerrilla/gun/rate with storage main:guerrilla param.ak
execute unless score @s GuRate matches 1200.. run return 0
scoreboard players remove @s GuRate 1200
execute if score @s GuAmmoAk matches ..0 run return run function main:pvp/guerrilla/gun/reload/ak
function main:pvp/guerrilla/gun/shoot/ak
