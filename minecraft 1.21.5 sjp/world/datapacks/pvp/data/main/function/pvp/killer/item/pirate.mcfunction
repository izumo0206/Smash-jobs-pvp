#タグ付け
tag @p add KillerPirate

#海賊アイテム
clear @p
give @p minecraft:trident[custom_name='トラトラ',lore=['臆病な逃亡者を貫け'],unbreakable={},enchantments={sharpness:1},tooltip_display={hidden_components:['minecraft:unbreakable','minecraft:enchantments']}] 1
function main:mode/1vs4/give_killer_book
give @p minecraft:leather_chestplate[custom_name='海賊の上着',lore=['血で濡れている。'],dyed_color=4128436,unbreakable={},enchantments={projectile_protection:2},attribute_modifiers=[{type:'minecraft:max_health',amount:4.0,operation:'add_value',slot:'chest',id:'main:killer_pirate_health'}],tooltip_display={hidden_components:['minecraft:dyed_color','minecraft:unbreakable','minecraft:enchantments','minecraft:attribute_modifiers']}] 1
item replace entity @p armor.chest from entity @p container.2
clear @p minecraft:leather_chestplate 1
