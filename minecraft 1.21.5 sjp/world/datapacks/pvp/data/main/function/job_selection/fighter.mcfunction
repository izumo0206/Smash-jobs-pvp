#騎士

execute if data storage main:pick {active:1b} as @p run tellraw @s {"text":"武闘家は未実装のため選択できません。","color":"red"}
execute if data storage main:pick {active:1b} run return 0

#BAN

execute at @e[tag=jobsentakuKun] run data merge block ~-6 ~1 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2


#タグ付け
 tag @p add Sword
#持ち物
clear @p
give @p 
item replace entity @p armor.chest from entity @p container.2
clear @p

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:generic.attack_damage base set 6
attribute @p minecraft:max_health base set 44
attribute @p minecraft:attack_speed base set 3
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:armor base set 0
attribute @p minecraft:scale base set 1
attribute @p minecraft:movement_speed base set 0.15

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：武闘家"}]

 #選択制限

 execute at @e[tag=jobsentakuKun] run data merge block ~-6 ~1 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
