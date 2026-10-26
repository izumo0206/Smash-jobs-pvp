#専用custom_dataを持つ絵の具だけを切り替えに使用
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:cyan_dye[minecraft:custom_data~{dusk_paint:'fortress'}] run function main:pvp/dusk/items/select/fortress
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:white_dye[minecraft:custom_data~{dusk_paint:'rabbit'}] run function main:pvp/dusk/items/select/rabbit
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:light_blue_dye[minecraft:custom_data~{dusk_paint:'soldiers'}] run function main:pvp/dusk/items/select/soldiers
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:light_gray_dye[minecraft:custom_data~{dusk_paint:'pillar'}] run function main:pvp/dusk/items/select/pillar
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:lime_dye[minecraft:custom_data~{dusk_paint:'wall'}] run function main:pvp/dusk/items/select/wall

#落とした筆をインク弾へ変換
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:brush[minecraft:custom_data~{dusk_brush:1b}] run function main:pvp/dusk/projectile/drop
