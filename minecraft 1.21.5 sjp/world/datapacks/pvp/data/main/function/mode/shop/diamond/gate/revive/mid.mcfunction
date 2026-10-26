scoreboard players set #mid ShopGateCD 0
execute at @e[tag=CoinGateAnchor,tag=diamid,tag=CoinGateCooldown] run playsound minecraft:block.beacon.activate master @a[distance=..24] ~ ~ ~ 1 1.2
execute at @e[tag=CoinGateAnchor,tag=diamid,tag=CoinGateCooldown] run particle minecraft:dust{color:[0.1,1.0,0.2],scale:1.4} ~ ~0.8 ~ 0.7 0.5 0.7 0 30 force
tag @e[tag=CoinGateAnchor,tag=diamid] add dia
tag @e[tag=CoinGateAnchor,tag=diamid] remove CoinGateCooldown
function main:mode/shop/diamond/gate/update/mid
