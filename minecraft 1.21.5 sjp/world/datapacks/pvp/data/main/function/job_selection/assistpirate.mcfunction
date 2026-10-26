#異端者AssistPirateNoMa

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:12,pool:"assistpirate",job_name:"異端者",job_function:"assistpirate",sign_x:-13,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-13 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2


#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Assist
tag @p add Heretic

#持ち物
clear @p
give @p minecraft:trident[attribute_modifiers=[{"type":"attack_damage","amount":3,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="嘆きの福音",enchantment_glint_override=true,enchantments={"sharpness":4},lore=["この世は涙、嗚咽の海"],unbreakable={}]
give @p minecraft:blaze_rod[custom_name="魔力の杖",enchantment_glint_override=true,lore=["魔力が込められた杖。スニークでMPを回復する"]]
give @p minecraft:blaze_rod[custom_name="アシストの杖",enchantment_glint_override=true,lore=["魔法に必要な杖。跳ねることで魔法を切り替える"]]
give @p minecraft:golden_helmet[attribute_modifiers=[{"type":"armor","amount":6,"operation":"add_value","slot":"armor","id":"2"}],custom_name="無名の冠",enchantment_glint_override=true,enchantments={"fire_protection":1},lore=["誰のものでもない冠"],unbreakable={}]
item replace entity @p armor.head from entity @p container.3
clear @p minecraft:golden_helmet 1
give @p minecraft:bread 64
give @p minecraft:enchanted_golden_apple[custom_name="禁断の果実",enchantment_glint_override=true] 2
scoreboard players set @p AssistMP 100
scoreboard players set @p AssistCooldown 0

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：異端者"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 40
attribute @p minecraft:entity_interaction_range base set 3
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:attack_speed base set 1

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-13 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
