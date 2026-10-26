#プロトタイプ

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:30,pool:"prototype",job_name:"プロトタイプ",job_function:"prototype",sign_x:-13,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-13 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2



#タグ消し
function main:job_selection/tag_reset2
tag @p remove prototype_gived
scoreboard players set @p prototype_kill 0
scoreboard players set @p prototype_totalkill 0

#タグ付け
tag @p add Prototype

#持ち物
clear @p
give @p minecraft:bone[attribute_modifiers=[{"type":"attack_damage","amount":2,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":1,"operation":"add_value","slot":"mainhand","id":"1"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="変異:爪",lore=["その爪は鋭い","なにより致命的"]]
give @p minecraft:bread 64
give @p minecraft:turtle_helmet[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"head","id":"2"}],custom_name="変異:硬質",enchantment_glint_override=false,enchantments={"projectile_protection":1,"binding_curse":1},lore=["堅く固く"]]
item replace entity @p armor.head from entity @p container.2
clear @p minecraft:turtle_helmet 1
scoreboard players set @p shield 0

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 60
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:attack_speed base set 3
attribute @p minecraft:scale base set 0.6

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：プロトタイプ"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-13 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
