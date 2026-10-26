#シンジド

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:9,pool:"singed",job_name:"マッドケミスト",job_function:"singed",sign_x:-9,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-9 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#タグ付け
tag @p add Singed

#持ち物
clear @p
give @p shield[attribute_modifiers=[{"type":"attack_damage","amount":2,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],banner_patterns=[{pattern:"rhombus",color:"purple"}],base_color="green",custom_name="ドランシールド",lore=["もはや人間としての理性を見ることはできない。"],unbreakable={}]
give @p minecraft:bread 64


#狂人のポーション（移動速度上昇１、再生1、耐性１）
give @p potion[custom_name="狂人のポーション",lore=["筋力増強、骨密度上昇、視力増加、","聴力上昇、伝達速度向上、神経増設。","あとついでに寿命激減！"],potion_contents={"custom_color":744448,"custom_effects":[{"id":"speed","amplifier":0,"duration":200,"show_particles":false},{"id":"strength","amplifier":0,"duration":200},{"id":"regeneration","amplifier":0,"duration":200},{"id":"resistance","amplifier":0,"duration":200}]}]

#強力粘着剤（移動速度低下１０、弱体化１）
give @p splash_potion[custom_name="強力粘着剤",lore=["ヒヒヒ……"],potion_contents={"custom_color":8954624,"custom_effects":[{"id":"slowness","amplifier":199,"duration":60},{"id":"jump_boost","amplifier":199,"duration":60}]}] 5

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：マッドケミスト"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 50
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 1.1
attribute @p minecraft:movement_speed base set 0.1

#選択制限

execute at @e[tag=jobsentakuKun] run data merge block ~-9 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
