#騎士

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:7,pool:"sword",job_name:"騎士",job_function:"sword",sign_x:-7,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

#BAN

execute at @e[tag=jobsentakuKun] run data merge block ~-7 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2


#タグ付け
 tag @p add Sword

#持ち物
clear @p
give @p iron_sword[attribute_modifiers=[{"type":"attack_damage","amount":18,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":0.4,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1.1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="不退の剣",lore=["生ける伝説の象徴"],unbreakable={}]
give @p shield[attribute_modifiers=[{"type":"movement_speed","amount":-0.04,"operation":"add_value","slot":"offhand","id":"3"},{"type":"attack_damage","amount":-2,"operation":"add_value","slot":"offhand","id":"3"}],banner_patterns=[{pattern:"straight_cross",color:"white"}],base_color="black",custom_name="不動の盾",lore=["我が戦場に果ては無し"],unbreakable={}]
give @p minecraft:iron_chestplate[attribute_modifiers=[{"type":"armor","amount":1,"operation":"add_value","slot":"armor","id":"2"}],custom_name="歴戦の装甲",lore=["傷の数は勇気の証"],unbreakable={}]
give @p minecraft:iron_leggings[attribute_modifiers=[{"type":"armor","amount":2,"operation":"add_value","slot":"armor","id":"2"}],custom_name="歴戦の装甲",lore=["傷の数は勇気の証"],unbreakable={}]
give @p minecraft:iron_boots[attribute_modifiers=[{"type":"armor","amount":2,"operation":"add_value","slot":"armor","id":"2"}],custom_name="歴戦の装甲",lore=["傷の数は勇気の証"],unbreakable={}]
item replace entity @p armor.chest from entity @p container.2
item replace entity @p armor.legs from entity @p container.3
item replace entity @p armor.feet from entity @p container.4
clear @p minecraft:iron_chestplate 1
clear @p minecraft:iron_leggings 1
clear @p minecraft:iron_boots 1
give @p minecraft:snowball 64
give @p minecraft:golden_apple 10
give @p minecraft:bread 64


 scoreboard players set @p shield 0

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 50
attribute @p minecraft:attack_speed base set 0.5
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:armor base set 5
attribute @p minecraft:scale base set 1.2
attribute @p minecraft:movement_speed base set 0.07

 #ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：騎士"}]

 #選択制限

 execute at @e[tag=jobsentakuKun] run data merge block ~-7 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
