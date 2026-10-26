#ガーディアン

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:14,pool:"guardian",job_name:"ガーディアン",job_function:"guardian",sign_x:-15,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-15 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2


tag @p add Guardian

#アイテム
clear @p
give @p minecraft:trident[attribute_modifiers=[{"type":"attack_damage","amount":3,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="拒絶の楔",enchantment_glint_override=true,enchantments={"sharpness":4},lore=["禁則の地"],unbreakable={}]
give @p minecraft:leather_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="聖床の具足",enchantments={"feather_falling":200},dyed_color=13433343,lore=["鳴動の隻脚"],trim={"material":"redstone","pattern":"ward"},unbreakable={}]
item replace entity @p armor.feet from entity @p container.1
clear @p minecraft:leather_boots 1
give @p minecraft:ender_pearl
give @p minecraft:bread 64

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 38
attribute @p minecraft:entity_interaction_range base set 3
attribute @p minecraft:movement_speed base set 0.1
attribute @p minecraft:attack_speed base set 1

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：ガーディアン"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-15 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
