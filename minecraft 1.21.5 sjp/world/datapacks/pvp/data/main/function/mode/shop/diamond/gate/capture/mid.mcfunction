#同tickに複数人が完了しても最初の1人だけが回収する
execute unless entity @e[tag=CoinGateAnchor,tag=diamid,tag=dia,distance=..0.5] run return 0
execute if entity @s[team=Red] run scoreboard players add @a[team=Red] ShopCoin 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Blue] ShopCoin 1
execute if entity @s[team=Red] as @a[team=Red] run title @s actionbar [{text:'チームコイン +1  ',color:'gold'},{text:'所持: ',color:'yellow'},{score:{name:'@s',objective:'ShopCoin'},color:'white'}]
execute if entity @s[team=Blue] as @a[team=Blue] run title @s actionbar [{text:'チームコイン +1  ',color:'gold'},{text:'所持: ',color:'yellow'},{score:{name:'@s',objective:'ShopCoin'},color:'white'}]
execute if entity @s[team=Red] run playsound minecraft:entity.experience_orb.pickup master @a[team=Red] ~ ~ ~ 0.8 1.4 1
execute if entity @s[team=Blue] run playsound minecraft:entity.experience_orb.pickup master @a[team=Blue] ~ ~ ~ 0.8 1.4 1
scoreboard players set @a diamond 0
tag @e[tag=CoinGateAnchor,tag=diamid,tag=dia,distance=..0.5] add CoinGateCooldown
tag @e[tag=CoinGateAnchor,tag=diamid,tag=dia,distance=..0.5] remove dia
scoreboard players set #mid ShopGateCD 3000
function main:mode/shop/diamond/gate/update/mid
