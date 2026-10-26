#スナイパー（単発）。連射間隔中のクリックは要求（HsReq）を残し、撃てるようになった時点で発射する
execute if score @s HsCool matches 1.. run return 0
tag @s remove HsReq
execute if score @s HsReload matches 1.. run return 0
execute if score @s HsAmmo matches ..0 run return run function main:pvp/healsniper/rifle/reload
function main:pvp/healsniper/rifle/cool with storage main:healsniper param.rifle
scoreboard players remove @s HsAmmo 1
function main:pvp/healsniper/rifle/fire
execute if score @s HsAmmo matches ..0 run function main:pvp/healsniper/rifle/reload
