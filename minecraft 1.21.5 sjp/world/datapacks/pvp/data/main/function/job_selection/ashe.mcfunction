#アッシュ

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:26,pool:"ashe",job_name:"氷の射手",job_function:"ashe",sign_x:-8,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-8 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2


#タグ消し
function main:job_selection/tag_reset2



#タグ付け
tag @p add Ashe

#持ち物
clear @p
give @p written_book[minecraft:written_book_content={title:"スキルの書",author:"クリックでスキルを選択",pages:[["",{"text":"レンジャーフォーカス","color":"aqua","click_event":{"action":"run_command","command":"/function main:pvp/ashe/ashe_q"},"hover_event":{"action":"show_text","value":[{"text":"速射"}]}},{"text":"\nボレー","color":"aqua","click_event":{"action":"run_command","command":"/function main:pvp/ashe/ashe_w"},"hover_event":{"action":"show_text","value":[{"text":"拡散"}]}},{"text":"\nスカウトホーク","color":"aqua","click_event":{"action":"run_command","command":"/function main:pvp/ashe/ashe_e"},"hover_event":{"action":"show_text","value":[{"text":"発見"}]}},{"text":"\nクリスタルアロー","color":"aqua","click_event":{"action":"run_command","command":"/function main:pvp/ashe/ashe_r"},"hover_event":{"action":"show_text","value":[{"text":"拘束"}]}}]]}]
give @p minecraft:diamond_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="タップダンサー",trim={"material":"diamond","pattern":"dune"},unbreakable={}]
item replace entity @p armor.feet from entity @p container.1
clear @p minecraft:diamond_boots 1

give @p minecraft:bread 64

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：氷の射手"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 24
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 0.9

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-8 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
