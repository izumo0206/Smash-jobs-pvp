#実行者：ドロップ品の近くにいるゲリラ兵
tag @s add GuPicker
execute as @e[type=item,tag=GuDrop,distance=..1.5] run function main:pvp/guerrilla/drop/pickup_item
tag @s remove GuPicker
