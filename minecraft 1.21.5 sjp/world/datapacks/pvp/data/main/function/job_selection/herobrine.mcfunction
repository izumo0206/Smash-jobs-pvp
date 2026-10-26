#覚醒者

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:1,pool:"herobrine",job_name:"覚醒者",job_function:"herobrine",sign_x:0,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~ ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

tag @p add Herobrine

scoreboard players set @e[tag=Herobrine] redstonecooldown 0

#持ち物
clear @p
give @p iron_sword[attribute_modifiers=[{"type":"attack_damage","amount":9,"operation":"add_value","slot":"mainhand","id":"1"},{"type":"attack_speed","amount":0.5,"operation":"add_value","slot":"mainhand","id":"1"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],minecraft:item_model="sjp:realizer",custom_name="リアライザー",lore=["曝け出された色は、阿頼耶──"],unbreakable={}]
give @p minecraft:bread 64
give @p leather_chestplate[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","id":"1"}],custom_name="覚醒者の上着",dyed_color=193226,lore=["蒙を開く者"],tooltip_display={hide_tooltip:false,hidden_components:["dyed_color"]},unbreakable={}]
item replace entity @p armor.chest from entity @p container.2
clear @p minecraft:leather_chestplate 1

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 40
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：覚醒者"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~ ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
