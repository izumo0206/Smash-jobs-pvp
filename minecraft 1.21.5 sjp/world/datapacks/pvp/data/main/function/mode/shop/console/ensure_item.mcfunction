execute if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_console:1b}] run return 0
execute if items entity @s inventory.* minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_console:1b}] run return 0
execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_console:1b}] run return 0
give @s minecraft:carrot_on_a_stick[custom_name={text:'ショップコンソール',color:'gold',italic:0b},lore=[{text:'右クリックでショップを開く',color:'yellow',italic:0b}],custom_data={shop_console:1b},unbreakable={},enchantment_glint_override=1b]
