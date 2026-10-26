#ハンター

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:18,pool:"hunter",job_name:"ハンター",job_function:"hunter",sign_x:-20,sign_y:1}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-20 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Hunter

#持ち物
clear @p
give @p minecraft:crossbow[custom_name="Jaktbage",enchantment_glint_override=true,enchantments={"quick_charge":5},lore=["ある極寒の地にて使用されていた弩"],use_cooldown={seconds:0.5,cooldown_group:"2"},unbreakable={}]
give @p minecraft:arrow 1
give @p minecraft:tipped_arrow[custom_name="毒の矢",potion_contents={"custom_color":369424,"custom_effects":[{"id":"hunger","amplifier":0,"duration":2400},{"id":"poison","amplifier":1,"duration":2400}]}]
give @p minecraft:tipped_arrow[custom_name="弱化の矢",potion_contents={"custom_color":9079434,"custom_effects":[{"id":"slowness","amplifier":1,"duration":3200},{"id":"weakness","amplifier":1,"duration":3200}]}]
give @p minecraft:tipped_arrow[custom_name="麻痺の矢",potion_contents={"custom_color":16776960,"custom_effects":[{"id":"slowness","amplifier":199,"duration":900},{"id":"jump_boost","amplifier":199,"duration":900}]}]
give @p minecraft:netherite_hoe[attribute_modifiers=[{"type":"attack_damage","amount":3,"operation":"add_value","slot":"hand","id":"2"},{"type":"attack_knockback","amount":1.5,"operation":"add_value","slot":"hand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="Fallbart svard",lore=["射止めた獲物にとどめを刺せ。手段は問わない"],unbreakable={}]
give @p minecraft:netherite_helmet[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="ゴーストアイ",trim={"material":"redstone","pattern":"eye"},unbreakable={}]
item replace entity @p armor.head from entity @p container.6
clear @p minecraft:netherite_helmet 1
give @p minecraft:bread 64

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：ハンター"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 34
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2

#jumpリセット
scoreboard players set @p Jump 0


#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-20 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
