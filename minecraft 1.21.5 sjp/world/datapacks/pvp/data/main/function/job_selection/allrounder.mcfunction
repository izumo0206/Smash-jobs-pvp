#万能手

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:15,pool:"allrounder",job_name:"万能手",job_function:"allrounder",sign_x:-16,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-16 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#タグ付け
tag @p add Allrounder

#持ち物
clear @p
give @p minecraft:iron_sword[attribute_modifiers=[{"type":"attack_damage","amount":5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1.1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="ライト",lore=["まさに王道"],unbreakable={}]
give @p minecraft:iron_axe[attribute_modifiers=[{"type":"attack_damage","amount":7,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":0.1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="カオス",unbreakable={}]
give @p minecraft:bow[custom_name="ダーク",enchantments={"power":3,"infinity":1},lore=["負ければ邪道"],unbreakable={}]
give @p minecraft:shield[custom_name="コスモス"]
give @p minecraft:arrow
give @p minecraft:golden_apple[item_name={"bold":true,"text":"高級リンゴ"}] 5
give @p minecraft:bread 64


scoreboard players set @p shield 0

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：万能手"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 40
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 1

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-16 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
