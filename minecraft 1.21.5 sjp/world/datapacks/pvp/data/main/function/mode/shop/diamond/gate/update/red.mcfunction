execute if score #red ShopGateCD matches 0 as @e[type=text_display,tag=CoinGateDisplayRed] run function main:mode/shop/diamond/gate/render/ready
execute if score #red ShopGateCD matches 1.. run scoreboard players operation #source ShopGateCD = #red ShopGateCD
execute if score #red ShopGateCD matches 1.. run function main:mode/shop/diamond/gate/calculate
execute if score #red ShopGateCD matches 1.. if score #seconds ShopGateCD matches 0..9 as @e[type=text_display,tag=CoinGateDisplayRed] run function main:mode/shop/diamond/gate/render/cooldown_zero with storage main:shop_gate display
execute if score #red ShopGateCD matches 1.. if score #seconds ShopGateCD matches 10.. as @e[type=text_display,tag=CoinGateDisplayRed] run function main:mode/shop/diamond/gate/render/cooldown with storage main:shop_gate display
