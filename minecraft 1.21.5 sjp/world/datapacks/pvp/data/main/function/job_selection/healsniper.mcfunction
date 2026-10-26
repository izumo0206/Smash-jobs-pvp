#回復スナイパー（非公開ジョブ：pick/job_pool/reset で PickPool 3。/function main:job_selection/healsniper で選択）

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:35,pool:"healsniper",job_name:"回復スナイパー",job_function:"healsniper",sign_x:-19,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute unless data storage main:healsniper {setup:1b} run function main:pvp/healsniper/setup
#調整用パラメーターを読み込む（config.mcfunction）
function main:pvp/healsniper/config

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

function main:job_selection/tag_reset2

tag @p add HealSniper

#初期状態
execute as @p run function main:pvp/healsniper/init_player

#持ち物
clear @p
execute as @p run function main:pvp/healsniper/item/give_rifle
execute as @p run function main:pvp/healsniper/item/give_dart
#ナノブーストはキルすると手に入る
give @p minecraft:bread 64

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:attack_damage base set 1
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:max_health base set 30
attribute @p minecraft:armor base set 0
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 0.9

title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：回復スナイパー"}]
