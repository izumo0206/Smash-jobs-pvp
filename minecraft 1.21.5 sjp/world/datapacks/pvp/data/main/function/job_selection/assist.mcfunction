#アシスト

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:22,pool:"assist",job_name:"アシスター",job_function:"assist",sign_x:-3,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-3 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Assist2

#持ち物
clear @p
give @p minecraft:blaze_rod[custom_name="魔力の杖",lore=["スニークでMPを回復させる"]]
give @p minecraft:blaze_rod[custom_name="アシストの杖",lore=["条件達成で魔法発動"]]
give @p minecraft:wooden_sword[attribute_modifiers=[{"type":"attack_knockback","amount":1.5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="護身用の木剣",lore=["教会を訪れた勇者が置いて行った素朴な木剣"],unbreakable={}]
give @p minecraft:bread 64
scoreboard players set @p AssistMP 300
scoreboard players set @p AssistCooldown 0

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：アシスター"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 30
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:scale base set 0.9
attribute @p minecraft:entity_interaction_range base set 2

#選択制限

execute at @e[tag=jobsentakuKun] run data merge block ~-3 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
