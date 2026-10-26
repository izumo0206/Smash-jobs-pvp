#実行者：回復中の味方。heal tick 経過したら強い再生を止め、通常の再生（regen）に切り替える
scoreboard players remove @s HsHeal 1
execute if score @s HsHeal matches 1.. run return 0
effect clear @s minecraft:regeneration
function main:pvp/healsniper/fx/heal_regen with storage main:healsniper param.rifle
#ナノブースト中なら、その再生も付け直す
execute if score @s HsNano matches 1.. run function main:pvp/healsniper/nano/regen_again
