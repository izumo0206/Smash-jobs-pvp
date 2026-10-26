#バードマン

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:31,pool:"birdman",job_name:"バードマン",job_function:"birdman",sign_x:-14,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-14 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2


#タグ消し
function main:job_selection/tag_reset2


#タグ付け
tag @p add Birdman

#持ち物
clear @p
give @p minecraft:stone_axe[attribute_modifiers=[{"type":"attack_damage","amount":9,"operation":"add_value","slot":"mainhand","id":"1"},{"type":"attack_speed","amount":0.1,"operation":"add_value","slot":"mainhand","id":"1"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="大地の斧",lore=["捨てることで上昇気流発生"],unbreakable={}]
give @p minecraft:leather_boots[attribute_modifiers=[{"type":"fall_damage_multiplier","amount":-1,"operation":"add_value","slot":"feet","id":"2"}],custom_name="空の靴",lore=["空と地"],trim={"material":"quartz","pattern":"wild"},unbreakable={}]
give @p minecraft:elytra[unbreakable={}] 1
item replace entity @p armor.feet from entity @p container.1
item replace entity @p armor.chest from entity @p container.2
clear @p minecraft:leather_boots 1
clear @p minecraft:elytra 1
give @p minecraft:firework_rocket 16
give @p minecraft:bread 64

scoreboard players set @p shield 0
scoreboard players set @p BirdmanCooldown 0

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：バードマン"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 30
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:attack_speed base set 1

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-14 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
