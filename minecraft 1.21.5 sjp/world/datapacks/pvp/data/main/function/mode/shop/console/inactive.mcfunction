clear @a minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_console:1b}]
clear @a minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_ticket_device:1b}]
execute as @e[type=minecraft:item] if items entity @s contents minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_ticket_device:1b}] run kill @s
scoreboard players reset @a ShopOpen
scoreboard players reset @a ShopBuy
scoreboard players set @a ShopUse 0
scoreboard players set @a BlinkUse 0
execute as @a run attribute @s minecraft:fall_damage_multiplier modifier remove main:shop_sky_sword_fall
tag @a remove ShopSkyFall
