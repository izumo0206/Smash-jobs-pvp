#ピースキーパー

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:10,pool:"peacekeeper",job_name:"ピースキーパー",job_function:"peacekeeper",sign_x:-10,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-10 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2


#タグ付け
tag @p add Peacekeeper

#持ち物
clear @p
give @p minecraft:light_blue_dye[custom_name="『少し黙れ』",lore=["CD160"]]
give @p minecraft:green_dye[custom_name="『我が脚は疾風』",lore=["CD60"]]
give @p minecraft:gray_dye[custom_name="『我が腕は鋼鉄』",lore=["CD120"]]
give @p minecraft:pink_dye[custom_name="『傷よ癒えよ』",lore=["CD150"]]
give @p minecraft:white_dye[custom_name="『剣を収めよ』",lore=["CD250"]]
give @p minecraft:black_dye[custom_name="『死ね』",lore=["CD300"]]
give @p minecraft:leather_chestplate[attribute_modifiers=[{"type":"armor","amount":4,"operation":"add_value","slot":"armor","id":"2"}],custom_name="保安官の制服",dyed_color=88523,enchantment_glint_override=true,enchantments={"blast_protection":2},lore=["私が司るのは治安。決して無くせないもの。"],unbreakable={}]
give @p minecraft:leather_leggings[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="保安官の制服",dyed_color=88523,enchantment_glint_override=true,enchantments={"fire_protection":2},lore=["万に一つも失敗はあってはならない。"],unbreakable={}]
item replace entity @p armor.chest from entity @p container.6
item replace entity @p armor.legs from entity @p container.7
clear @p minecraft:leather_chestplate 1
clear @p minecraft:leather_leggings 1
give @p minecraft:bread 64

scoreboard players set @p peacekeeperCD 0

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 50
attribute @p minecraft:entity_interaction_range base set 3
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:attack_speed base set 2.5

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：ピースキーパー"}]

#選択制限

execute at @e[tag=jobsentakuKun] run data merge block ~-10 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
