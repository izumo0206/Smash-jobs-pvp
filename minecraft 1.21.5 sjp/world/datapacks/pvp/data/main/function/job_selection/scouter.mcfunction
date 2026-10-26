#偵察者

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:25,pool:"scouter",job_name:"偵察兵",job_function:"scouter",sign_x:-7,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-7 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#タグ付け
tag @p add Scouter

#持ち物
clear @p
give @p minecraft:netherite_hoe[attribute_modifiers=[{"type":"attack_damage","amount":2,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":3,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="影縫い",item_model="sjp:kagenui",lore=["私に勝てますかねぇ？"],unbreakable={}]
give @p minecraft:bread 64

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：偵察者"}]


#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 24
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:attack_speed base set 1

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-7 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]}}
