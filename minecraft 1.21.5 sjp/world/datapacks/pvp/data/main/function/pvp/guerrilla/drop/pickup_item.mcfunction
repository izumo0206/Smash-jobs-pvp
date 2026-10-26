#実行者：ドロップ品
data modify storage main:guerrilla pick.kind set from entity @s Item.components."minecraft:custom_data".gu_drop
execute as @a[tag=GuPicker,limit=1] at @s run function main:pvp/guerrilla/drop/give with storage main:guerrilla pick
kill @s
