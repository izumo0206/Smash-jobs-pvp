#一撃で倒れても頭蓋骨が正しい位置に落ちるよう、ダメージ前に記録する
execute if entity @s[type=player] run function main:pvp/guerrilla/death/mark with storage main:guerrilla param.common
execute at @s positioned ~ ~1 ~ run function main:pvp/guerrilla/fx/blood with storage main:guerrilla param.common
$execute if entity @a[tag=GuSrc] run damage @s $(damage) main:gu_explosion by @a[tag=GuSrc,limit=1]
$execute unless entity @a[tag=GuSrc] run damage @s $(damage) main:gu_explosion
