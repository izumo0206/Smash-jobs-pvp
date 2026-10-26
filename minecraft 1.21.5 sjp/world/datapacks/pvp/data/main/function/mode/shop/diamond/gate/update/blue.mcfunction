execute if score #blue ShopGateCD matches 0 as @e[type=text_display,tag=CoinGateDisplayBlue] run function main:mode/shop/diamond/gate/render/ready
execute if score #blue ShopGateCD matches 1.. run scoreboard players operation #source ShopGateCD = #blue ShopGateCD
execute if score #blue ShopGateCD matches 1.. run function main:mode/shop/diamond/gate/calculate
execute if score #blue ShopGateCD matches 1.. if score #seconds ShopGateCD matches 0..9 as @e[type=text_display,tag=CoinGateDisplayBlue] run function main:mode/shop/diamond/gate/render/cooldown_zero with storage main:shop_gate display
execute if score #blue ShopGateCD matches 1.. if score #seconds ShopGateCD matches 10.. as @e[type=text_display,tag=CoinGateDisplayBlue] run function main:mode/shop/diamond/gate/render/cooldown with storage main:shop_gate display
