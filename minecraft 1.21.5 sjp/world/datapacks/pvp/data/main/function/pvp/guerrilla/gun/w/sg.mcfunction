#ショットガン：単発（数値は config.mcfunction の param.sg）
#連射間隔中のクリックは要求（GuReq）を残し、撃てるようになった時点で発射する
execute if score @s GuCool matches 1.. run return 0
tag @s remove GuReq
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 1 run return 0
execute if score @s GuAmmoSg matches ..0 run return run function main:pvp/guerrilla/gun/reload/sg
function main:pvp/guerrilla/gun/cool with storage main:guerrilla param.sg
function main:pvp/guerrilla/gun/shoot/sg
