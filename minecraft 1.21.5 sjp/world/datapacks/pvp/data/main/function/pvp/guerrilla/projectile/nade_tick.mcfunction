#雪玉が消えた（着弾した）らその場で爆発
execute if predicate main:gu_riding run return 0
#半径・ダメージは config の param.grenade
function main:pvp/guerrilla/fx/explode with storage main:guerrilla param.grenade
kill @s
