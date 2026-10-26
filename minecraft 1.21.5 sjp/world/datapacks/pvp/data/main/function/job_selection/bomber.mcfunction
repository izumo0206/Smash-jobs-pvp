#爆弾弓兵

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:20,pool:"bomber",job_name:"爆弾魔",job_function:"bomber",sign_x:0,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~ ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2


#タグ付け
tag @p add Bomber

#持ち物
clear @p
give @p minecraft:crossbow[custom_name="爆砕の弓",enchantments={"quick_charge":2,"piercing":1},lore=["火がついたぜぇ～！アハハハ～！"],unbreakable={}]
give @p minecraft:spectral_arrow 1
give @p minecraft:chainmail_helmet[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="爆発用防護服",enchantments={"blast_protection":2},lore=["爆発に強い耐性があるようだ"],trim={"material":"quartz","pattern":"dune"},unbreakable={}]
give @p minecraft:chainmail_chestplate[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="爆発用防護服",enchantments={"blast_protection":2},lore=["爆発に強い耐性があるようだ"],trim={"material":"quartz","pattern":"dune"},unbreakable={}]
give @p minecraft:chainmail_leggings[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="爆発用防護服",enchantments={"blast_protection":2},lore=["爆発に強い耐性があるようだ"],trim={"material":"quartz","pattern":"dune"},unbreakable={}]
give @p minecraft:chainmail_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="爆発用防護服",enchantments={"blast_protection":2},lore=["爆発に強い耐性があるようだ"],trim={"material":"quartz","pattern":"dune"},unbreakable={}]
item replace entity @p armor.head from entity @p container.2
item replace entity @p armor.chest from entity @p container.3
item replace entity @p armor.legs from entity @p container.4
item replace entity @p armor.feet from entity @p container.5
clear @p minecraft:chainmail_helmet 1
clear @p minecraft:chainmail_chestplate 1
clear @p minecraft:chainmail_leggings 1
clear @p minecraft:chainmail_boots 1
give @p minecraft:totem_of_undying[custom_name="自爆用爆弾"] 2
give @p minecraft:bread 64

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：爆弾魔"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 40
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:armor base set 4

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~ ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
