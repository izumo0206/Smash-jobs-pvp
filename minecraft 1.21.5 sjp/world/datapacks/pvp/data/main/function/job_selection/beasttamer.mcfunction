#ビーストテイマー

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:29,pool:"beasttamer",job_name:"ビーストテイマー",job_function:"beasttamer",sign_x:-12,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-12 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Beasttamer

#持ち物
clear @p
give @p minecraft:bone 1
give @p minecraft:blaze_rod[custom_name="狼の杖",lore=["狼を召喚する"]]
give @p minecraft:blaze_rod[custom_name="グライアスの杖",lore=["グライアスを召喚する"]]
give @p minecraft:blaze_rod[custom_name="リューの杖",lore=["リューを召喚する"]]
give @p minecraft:bread 64
give @p minecraft:bow[custom_name="絆の弓",enchantments={"infinity":1},lore=[""],unbreakable={}]
give @p minecraft:arrow 1
scoreboard players set @p BeasttamerCooldown 0

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：ビーストテイマー"}]

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 28
attribute @p minecraft:entity_interaction_range base set 2

attribute @p minecraft:attack_speed base set 1

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-12 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
