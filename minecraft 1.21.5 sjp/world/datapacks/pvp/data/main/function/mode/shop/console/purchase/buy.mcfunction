$execute unless score @s ShopCoin matches $(price).. run function main:mode/shop/console/purchase/fail {price:$(price),name:'$(name)'}
$execute unless score @s ShopCoin matches $(price).. run return 0
$scoreboard players remove @s ShopCoin $(price)
$function main:mode/shop/console/product/give/$(id)
$function main:mode/shop/console/purchase/success {name:'$(name)'}
