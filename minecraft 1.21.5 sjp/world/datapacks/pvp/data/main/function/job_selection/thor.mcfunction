#雷神

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:5,pool:"thor",job_name:"雷神",job_function:"thor",sign_x:-4,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-4 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2


#タグ付け
tag @p add Thor

#持ち物
clear @p
give @p minecraft:mace[attribute_modifiers=[{"type":"attack_damage","amount":10,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":0.5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1.5,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="《雷槌》ミョルニル",enchantment_glint_override=true,lore=["神の怒りが貴様を穿つ"],unbreakable={}]
give @p minecraft:golden_chestplate[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="紫電の装甲",enchantments={"thorns":1},lore=["雷を纏い、触れた者にダメージを与える"],unbreakable={}]
give @p minecraft:golden_leggings[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="紫電の装甲",enchantments={"thorns":1},lore=["雷を纏い、触れた者にダメージを与える"],unbreakable={}]
give @p minecraft:golden_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="紫電の装甲",enchantments={"thorns":1},lore=["雷を纏い、触れた者にダメージを与える"],unbreakable={}]
item replace entity @p armor.chest from entity @p container.1
item replace entity @p armor.legs from entity @p container.2
item replace entity @p armor.feet from entity @p container.3
clear @p minecraft:golden_chestplate 1
clear @p minecraft:golden_leggings 1
clear @p minecraft:golden_boots 1
give @p minecraft:bread 64


#スコアボード
scoreboard players set @p ThorMP 0
scoreboard players set @p ThorCooldown 0
scoreboard players set @p ThorFallingAttackCooldown 0
scoreboard players set @p Zimen 0
scoreboard players set @p Land 0

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 40
attribute @p minecraft:attack_speed base set 0.5
attribute @p minecraft:armor base set 5
attribute @p minecraft:scale base set 1.1
attribute @p minecraft:fall_damage_multiplier base set 0
attribute @p minecraft:entity_interaction_range base set 2

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：雷神"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-4 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
