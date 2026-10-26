#タグ付け
tag @p remove KillerPirate

#略奪者アイテム
clear @p
function main:mode/1vs4/give_killer_book
give @p minecraft:iron_sword[custom_name='奪った剣',lore=['モノを奪い、心を奪い、命さえも奪う者'],unbreakable={},enchantments={sharpness:14},tooltip_display={hidden_components:['minecraft:unbreakable','minecraft:enchantments']}] 1
give @p minecraft:bow[custom_name='奪った弓',lore=['彼は恐怖すらも残さない'],unbreakable={},enchantments={power:2,infinity:1,piercing:5},tooltip_display={hidden_components:['minecraft:unbreakable','minecraft:enchantments']}] 1
give @p minecraft:arrow 1
give @p minecraft:golden_apple[custom_name='奪った果実',lore=['奪い尽くせ、取り戻せ']] 1
