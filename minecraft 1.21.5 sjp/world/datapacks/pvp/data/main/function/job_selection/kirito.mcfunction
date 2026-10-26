#キリト

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:4,pool:"kirito",job_name:"黒の剣士",job_function:"kirito",sign_x:-3,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0


execute at @e[tag=jobsentakuKun] run data merge block ~-3 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#タグ付け
tag @p add Kirito

#持ち物
clear @p

give @p netherite_sword[attribute_modifiers=[{"type":"movement_speed","amount":0.02,"operation":"add_value","slot":"offhand","id":"2"},{"type":"attack_damage","amount":7,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":0.5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="《冥黒の破剣》",lore=["その凄まじい性能から魔剣クラスに分類されている。"],enchantment_glint_override=true,unbreakable={}]

give @p diamond_sword[attribute_modifiers=[{"type":"attack_damage","amount":6,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"armor","amount":4,"operation":"add_value","slot":"offhand","id":"2"},{"type":"attack_speed","amount":0.7,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="《破邪の透剣》",lore=["プレイヤーメイドの最高傑作と言われている。"],enchantment_glint_override=true,unbreakable={}]

give @p leather_chestplate[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"3"}],custom_name="《漆黒の覇衣》",dyed_color=0,enchantment_glint_override=true,enchantments={"fire_protection":2,"blast_protection":2,"projectile_protection":2},lore=["コート・オブ・ダークシェイド"],unbreakable={}]

give @p leather_leggings[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"3"}],custom_name="《漆黒の覇衣》",dyed_color=0,enchantment_glint_override=true,lore=["ダークシェイド・ボトムス"],unbreakable={}]

give @p leather_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"3"}],custom_name="《漆黒の覇衣》",dyed_color=0,enchantment_glint_override=true,enchantments={"feather_falling":2},lore=["ダークシェイド・ブーツ"],unbreakable={}]

item replace entity @p armor.chest from entity @p container.2
item replace entity @p armor.legs from entity @p container.3
item replace entity @p armor.feet from entity @p container.4
clear @p minecraft:leather_chestplate 1
clear @p minecraft:leather_leggings 1
clear @p minecraft:leather_boots 1

give @p minecraft:bread 64

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 36
attribute @p minecraft:attack_speed base set 0.8
attribute @p minecraft:entity_interaction_range base set 2

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：黒の剣士"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-3 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
