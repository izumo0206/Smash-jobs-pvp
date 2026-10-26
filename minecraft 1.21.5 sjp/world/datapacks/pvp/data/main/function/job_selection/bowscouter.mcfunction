#隠密弓兵(複種モード)BowScouterNoMa

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:19,pool:"bowscouter",job_name:"隠密弓兵",job_function:"bowscouter",sign_x:-21,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-21 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#タグ付け
tag @p add ScouterBow


#持ち物
clear @p

give @p minecraft:crossbow[custom_name="不見の影弓",enchantment_glint_override=true,enchantments={"quick_charge":5},lore=["狩りたいなら止めはしない"],use_cooldown={seconds:0.6,cooldown_group:"2"},unbreakable={}]
give @p minecraft:tipped_arrow[custom_name="毒の矢",potion_contents={"custom_color":369424,"custom_effects":[{"id":"poison","amplifier":0,"duration":1280}]}]
give @p minecraft:bread 64

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：隠密弓兵"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 20
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:scale base set 0.9

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-21 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
