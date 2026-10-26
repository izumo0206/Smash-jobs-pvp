#タグ付け
tag @p remove KillerPirate

#殺人鬼アイテム
clear @p
function main:mode/1vs4/give_killer_book
give @p minecraft:netherite_hoe[custom_name='殺人鬼の鎌',lore=['血がこびりついた鎌。'],unbreakable={},enchantments={sharpness:3},tooltip_display={hidden_components:['minecraft:unbreakable','minecraft:enchantments']}] 1
give @p minecraft:leather_chestplate[custom_name='殺人鬼の服',dyed_color=0,unbreakable={},attribute_modifiers=[{type:'minecraft:max_health',amount:20.0,operation:'add_value',slot:'chest',id:'main:killer_isaac_health'}],tooltip_display={hidden_components:['minecraft:dyed_color','minecraft:unbreakable','minecraft:attribute_modifiers']}] 1
give @p minecraft:leather_leggings[custom_name='殺人鬼のズボン',dyed_color=0,unbreakable={},tooltip_display={hidden_components:['minecraft:dyed_color','minecraft:unbreakable']}] 1
give @p minecraft:leather_boots[custom_name='殺人鬼の靴',dyed_color=0,unbreakable={},tooltip_display={hidden_components:['minecraft:dyed_color','minecraft:unbreakable']}] 1
item replace entity @p armor.chest from entity @p container.2
item replace entity @p armor.legs from entity @p container.3
item replace entity @p armor.feet from entity @p container.4
clear @p minecraft:leather_chestplate 1
clear @p minecraft:leather_leggings 1
clear @p minecraft:leather_boots 1
