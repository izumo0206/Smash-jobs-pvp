#Zwolf jobsentakukunの場所適当

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:6,pool:"zwolf",job_name:"ゾンビ狼",job_function:"zwolf",sign_x:-5,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-5 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し　タグ付けは書いた
function main:job_selection/tag_reset2

tag @p add Zwolf

#持ち物 かいた
clear @p
give @p minecraft:diamond_sword[attribute_modifiers=[{"type":"attack_damage","amount":10,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":0.5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="餓狼剣",lore=["研がれた刃牙"],unbreakable={}]
give @p minecraft:rotten_flesh 128
give @p minecraft:leather_chestplate[attribute_modifiers=[{"type":"knockback_resistance","amount":0.4,"operation":"add_value","slot":"armor","id":"2"}],custom_name="腐った肌",dyed_color=5046280,lore=["血が固まっている"],unbreakable={}]
item replace entity @p armor.chest from entity @p container.3
clear @p minecraft:leather_chestplate 1

scoreboard players set @a[tag=Zwolf] zwolfCD 0

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 46
attribute @p minecraft:attack_speed base set 0.5
attribute @p minecraft:scale base set 1.1
attribute @p minecraft:movement_speed base set 0.05
attribute @p minecraft:entity_interaction_range base set 2

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：ゾンビ狼"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-5 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
