#上級ゲリラ兵（スネーク）

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:34,pool:"guerrilla",job_name:"上級ゲリラ兵",job_function:"guerrilla",sign_x:-18,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute unless data storage main:guerrilla {setup:1b} run function main:pvp/guerrilla/setup
#調整用パラメーターを読み込む（config.mcfunction）
function main:pvp/guerrilla/config

execute at @e[tag=jobsentakuKun] run data merge block ~-18 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}
execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

function main:job_selection/tag_reset2

tag @p add Guerrilla

#初期状態
scoreboard players add #next GuID 1
scoreboard players operation @p GuID = #next GuID
execute as @p run function main:pvp/guerrilla/init_player

#持ち物
clear @p
execute as @p run function main:pvp/guerrilla/item/give_sg

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:attack_damage base set 1
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:max_health base set 40
attribute @p minecraft:armor base set 0
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 1.1

title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：上級ゲリラ兵"}]
execute at @e[tag=jobsentakuKun] run data merge block ~-18 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
