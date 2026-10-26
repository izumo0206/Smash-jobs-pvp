#弓兵

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:16,pool:"bow",job_name:"弓兵",job_function:"bow",sign_x:-18,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-18 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#タグ付け
tag @p add Bow

#持ち物
clear @p
give @p minecraft:bow[custom_name="ヴィガー・ウィンド",enchantments={"power":3,"infinity":1},lore=["この矢に、願いを乗せて"],unbreakable={}]
give @p minecraft:arrow 1
give @p minecraft:leather_helmet[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="風読みの帽子",dyed_color=5077758,enchantment_glint_override=true,lore=["「意地悪な風だ」"],unbreakable={}]
item replace entity @p armor.head from entity @p container.2
clear @p minecraft:leather_helmet 1
give @p minecraft:spectral_arrow 30
give @p minecraft:bread 64

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 24
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:scale base set 0.9

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：弓兵"}]

#選択制限

execute at @e[tag=jobsentakuKun] run data merge block ~-18 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
