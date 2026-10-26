#海賊

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:11,pool:"pirate",job_name:"海賊",job_function:"pirate",sign_x:-12,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-12 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2


#タグ付け
tag @p add Pirate

#持ち物
clear @p
give @p minecraft:trident[attribute_modifiers=[{"type":"attack_damage","amount":3,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="トラトラ",enchantment_glint_override=true,enchantments={"sharpness":5},lore=["海の辛さは海の悲しみ"],unbreakable={}]
give @p minecraft:bread 64
give @p minecraft:leather_chestplate[attribute_modifiers=[{"type":"armor","amount":2,"operation":"add_value","slot":"armor","id":"2"}],custom_name="船長の長衣",dyed_color=4128436,enchantment_glint_override=true,enchantments={"fire_protection":4},lore=["魔法師団の船を襲った時に手に入れたマジックアイテム。"],unbreakable={}]
item replace entity @p armor.chest from entity @p container.2
clear @p minecraft:leather_chestplate 1

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 40
attribute @p minecraft:entity_interaction_range base set 3
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:attack_speed base set 1

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：海賊"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-12 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
