#トラッパー

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:27,pool:"trapper",job_name:"トラッパー",job_function:"trapper",sign_x:-9,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-9 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0
scoreboard players set @p TrapperCD 0

#タグ付け
tag @p add Trapper

#持ち物
clear @p
give @p minecraft:shears[custom_name="通常罠",lore=["物陰にご注意"]]
give @p minecraft:shears[custom_name="毒の罠",lore=["目標補足！"]]
give @p minecraft:shears[custom_name="闇の罠",lore=["暗黒が貴様を包む！"]]
give @p minecraft:shears[custom_name="鈍足の罠",lore=["ここは我が沼。お前は餌よ"]]
give @p minecraft:shears[custom_name="出口の罠",lore=["転送！"]]
give @p minecraft:carrot_on_a_stick[custom_name="入口の罠",lore=["転送！"]]
give @p minecraft:bread 64

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：トラッパー"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 26
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-9 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
