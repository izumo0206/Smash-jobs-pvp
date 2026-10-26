execute store result score @s ShopTmp run clear @s minecraft:diamond 0
execute if score @s ShopTmp matches 1.. run scoreboard players operation @s ShopCoin += @s ShopTmp
execute if score @s ShopTmp matches 1.. run tellraw @s [{text:'所持していたダイヤモンドを ',color:'yellow'},{score:{name:'@s',objective:'ShopTmp'},color:'gold'},{text:' コインへ変換しました。',color:'yellow'}]
clear @s minecraft:diamond
scoreboard players reset @s ShopTmp
