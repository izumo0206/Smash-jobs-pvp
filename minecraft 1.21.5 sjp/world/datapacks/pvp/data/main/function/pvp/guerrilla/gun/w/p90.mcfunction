#SMG（P90）：フルオート（数値は config.mcfunction の param.p90）
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 4 run return 0
function main:pvp/guerrilla/gun/rate with storage main:guerrilla param.p90
execute unless score @s GuRate matches 1200.. run return 0
scoreboard players remove @s GuRate 1200
execute if score @s GuAmmoP90 matches ..0 run return run function main:pvp/guerrilla/gun/reload/p90
function main:pvp/guerrilla/gun/shoot/p90
