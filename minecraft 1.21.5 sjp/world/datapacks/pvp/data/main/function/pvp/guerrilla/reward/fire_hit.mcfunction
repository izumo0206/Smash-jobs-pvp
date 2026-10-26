#実行者：炎の中の敵
execute if entity @s[type=player] run function main:pvp/guerrilla/death/mark with storage main:guerrilla param.common
$execute if entity @a[tag=GuSrc] run damage @s $(damage) minecraft:in_fire by @a[tag=GuSrc,limit=1]
$execute unless entity @a[tag=GuSrc] run damage @s $(damage) minecraft:in_fire
