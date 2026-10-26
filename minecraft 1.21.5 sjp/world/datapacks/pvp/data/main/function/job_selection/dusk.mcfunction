#画家

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:32,pool:"dusk",job_name:"画家",job_function:"dusk",sign_x:-15,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-15 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2



#タグ消し
function main:job_selection/tag_reset2

#タグ付け
tag @p add Dusk

#画家リワーク用scoreboardを初期化
execute unless data storage main:dusk {setup:1b} run function main:pvp/dusk/setup

#持ち物
clear @p
execute as @p run function main:pvp/dusk/items/ensure
give @p minecraft:bread 64

#タグ付け
tag @p add Dusk

#スコアボード設定
scoreboard players set @p DuskCooldown 0
scoreboard players set @p Duskkirikae 1
scoreboard players set @p DuskCast 0
execute as @p run function main:pvp/dusk/assign_owner


#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：画家"}]


#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 40
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:scale base set 0.9


#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-15 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
