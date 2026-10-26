#ザック

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:8,pool:"isaac",job_name:"殺人鬼",job_function:"isaac",sign_x:-8,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-8 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Isaac

#持ち物
clear @p
give @p netherite_hoe[attribute_modifiers=[{"type":"attack_damage","amount":2,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":3,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":0.7,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="グラインダー",lore=["血がこびりついている"],unbreakable={}]
give @p minecraft:leather_chestplate[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="血の装束",dyed_color=0,lore=["恐怖の象徴"],trim={"material":"redstone","pattern":"ward"},unbreakable={}]
give @p minecraft:leather_leggings[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="血の装束",dyed_color=0,lore=["恐怖の象徴"],trim={"material":"redstone","pattern":"ward"},unbreakable={}]
give @p minecraft:leather_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="血の装束",dyed_color=0,lore=["恐怖の象徴"],trim={"material":"redstone","pattern":"ward"},unbreakable={}]
item replace entity @p armor.chest from entity @p container.1
item replace entity @p armor.legs from entity @p container.2
item replace entity @p armor.feet from entity @p container.3
clear @p minecraft:leather_chestplate 1
clear @p minecraft:leather_leggings 1
clear @p minecraft:leather_boots 1
give @p minecraft:netherite_pickaxe[attribute_modifiers=[{"type":"movement_speed","amount":-0.1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"armor","amount":5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_damage","amount":1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_knockback","amount":1.5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":0.5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1.2,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="クラッシャー",lore=["凶器であり狂気"],unbreakable={}]
give @p minecraft:bread 64

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 56
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:movement_speed base set 0.15

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：殺人鬼"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-8 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
