#アシスト戦士(複種モード)AssistWarriorNoMa

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:3,pool:"assistwarrior",job_name:"白魔法剣士",job_function:"assistwarrior",sign_x:-2,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-2 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Assist
tag @p add WhiteSword

#持ち物
clear @p
give @p minecraft:shield[custom_name="セイクリッドカウンター",lore=["矛盾"],unbreakable={}]
give @p minecraft:iron_sword[attribute_modifiers=[{"type":"attack_damage","amount":9,"operation":"add_value","slot":"mainhand","id":"1"},{"type":"attack_speed","amount":0.5,"operation":"add_value","slot":"mainhand","id":"1"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="破邪の剣",lore=["神託のままに"],unbreakable={}]
give @p minecraft:blaze_rod[custom_name="魔力の杖",lore=["スニークでMPを回復させる"]]
give @p minecraft:blaze_rod[custom_name="アシストの杖",lore=["条件達成で魔法発動"]]
give @p minecraft:bread 64
scoreboard players set @p AssistMP 100
scoreboard players set @p AssistCooldown 0

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 40
attribute @p minecraft:attack_speed base set 0.8
attribute @p minecraft:entity_interaction_range base set 2

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：白魔法剣士"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-2 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
