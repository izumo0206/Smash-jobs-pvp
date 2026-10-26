#祭司

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:28,pool:"wraith",job_name:"祭司",job_function:"wraith",sign_x:-10,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0
execute at @e[tag=jobsentakuKun] run data merge block ~-10 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#スコアボード宣言（安全対策）
scoreboard objectives add wraith_cd dummy
scoreboard objectives add wraith_ent dummy
scoreboard objectives add wraith_exit dummy
scoreboard objectives add wraith_rc minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add wraith_dmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add wraith_void dummy
scoreboard objectives add wraith_drop_s minecraft.dropped:minecraft.golden_sword
scoreboard objectives add wraith_drop_f minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add wraith_type_1 dummy
scoreboard objectives add wraith_type_2 dummy
scoreboard objectives add wraith_type_3 dummy
scoreboard objectives add wraith_type_4 dummy
scoreboard objectives add wraith_mark_1 dummy
scoreboard objectives add wraith_mark_2 dummy
scoreboard objectives add wraith_mark_3 dummy
scoreboard objectives add wraith_mark_4 dummy
scoreboard objectives add wraith_sneak_cd dummy
scoreboard objectives add wraith_sword_ct dummy
scoreboard objectives add wraith_spec_time dummy

#タグ消し
function main:job_selection/tag_reset2

#持ち物クリア＆周囲のドロップ消去（誤検知防止）
clear @p
clear @p
execute at @p run kill @e[type=item,distance=..5]

#スコアボード初期化（アイテム配布前に確実に未選択・未登録へ）
scoreboard players set @p sneak 0
scoreboard players set @p wraith_cd 0
scoreboard players set @p wraith_ent -1
scoreboard players set @p wraith_exit -1
scoreboard players set @p wraith_rc 0
scoreboard players set @p wraith_dmg 0
scoreboard players set @p wraith_drop_s 0
scoreboard players set @p wraith_drop_f 0
scoreboard players set @p wraith_type_1 0
scoreboard players set @p wraith_type_2 0
scoreboard players set @p wraith_type_3 0
scoreboard players set @p wraith_type_4 0
scoreboard players set @p wraith_mark_1 0
scoreboard players set @p wraith_mark_2 0
scoreboard players set @p wraith_mark_3 0
scoreboard players set @p wraith_mark_4 0
scoreboard players set @p wraith_sneak_cd 0
scoreboard players set @p wraith_sword_ct 0
scoreboard players set @p wraith_spec_time 0

#旧スコア初期化（念のため）
scoreboard players set @p WraithCooldown 0
scoreboard players set @p WraithAmada 0
scoreboard players set @p WraithWarpCooldown 0

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 24
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 0.8

#アイテム配布
#スロット0: 黎明の長剣
give @p golden_sword[custom_data={wraith_slot:0},attribute_modifiers=[{type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand",id:"wraith:sword_damage"},{type:"entity_interaction_range",amount:2,operation:"add_value",slot:"mainhand",id:"wraith:sword_range"}],custom_name={text:'黎明の長剣',color:'gold',italic:0b},lore=[{text:'虚よ。祈りよ。',color:'gray',italic:0b},{text:'Qキー: 自身を入口/出口に指定',color:'yellow',italic:0b},{text:'スニークCT200: 虚空(10秒間スペクテイター化)',color:'light_purple',italic:0b}],unbreakable={}]

#スロット1: 座標1
give @p warped_fungus_on_a_stick[custom_data={wraith_slot:1},attribute_modifiers=[{type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand",id:"wraith:coord1_damage"},{type:"attack_speed",amount:4,operation:"add_value",slot:"mainhand",id:"wraith:coord1_speed"}],custom_name={text:'座標1',color:'aqua',italic:0b},lore=[{text:'右クリック: ゲート生成',color:'gray',italic:0b},{text:'味方の近くでスニーク: 味方登録(4ダメ)',color:'gray',italic:0b},{text:'敵を攻撃: 刻印付与(20秒)',color:'gray',italic:0b},{text:'Qキー: 入口/出口に指定',color:'yellow',italic:0b}],unbreakable={}]

#スロット2: 座標2
give @p warped_fungus_on_a_stick[custom_data={wraith_slot:2},attribute_modifiers=[{type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand",id:"wraith:coord2_damage"},{type:"attack_speed",amount:4,operation:"add_value",slot:"mainhand",id:"wraith:coord2_speed"}],custom_name={text:'座標2',color:'aqua',italic:0b},lore=[{text:'右クリック: ゲート生成',color:'gray',italic:0b},{text:'味方の近くでスニーク: 味方登録(4ダメ)',color:'gray',italic:0b},{text:'敵を攻撃: 刻印付与(20秒)',color:'gray',italic:0b},{text:'Qキー: 入口/出口に指定',color:'yellow',italic:0b}],unbreakable={}]

#スロット3: 座標3
give @p warped_fungus_on_a_stick[custom_data={wraith_slot:3},attribute_modifiers=[{type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand",id:"wraith:coord3_damage"},{type:"attack_speed",amount:4,operation:"add_value",slot:"mainhand",id:"wraith:coord3_speed"}],custom_name={text:'座標3',color:'aqua',italic:0b},lore=[{text:'右クリック: ゲート生成',color:'gray',italic:0b},{text:'味方の近くでスニーク: 味方登録(4ダメ)',color:'gray',italic:0b},{text:'敵を攻撃: 刻印付与(20秒)',color:'gray',italic:0b},{text:'Qキー: 入口/出口に指定',color:'yellow',italic:0b}],unbreakable={}]

#スロット4: 座標4
give @p warped_fungus_on_a_stick[custom_data={wraith_slot:4},attribute_modifiers=[{type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand",id:"wraith:coord4_damage"},{type:"attack_speed",amount:4,operation:"add_value",slot:"mainhand",id:"wraith:coord4_speed"}],custom_name={text:'座標4',color:'aqua',italic:0b},lore=[{text:'右クリック: ゲート生成',color:'gray',italic:0b},{text:'味方の近くでスニーク: 味方登録(4ダメ)',color:'gray',italic:0b},{text:'敵を攻撃: 刻印付与(20秒)',color:'gray',italic:0b},{text:'Qキー: 入口/出口に指定',color:'yellow',italic:0b}],unbreakable={}]

#防具: 黎明の跳躍
give @p minecraft:leather_boots[attribute_modifiers=[{type:"armor",amount:0,operation:"add_value",slot:"feet",id:"2"},{type:"safe_fall_distance",amount:2,operation:"add_value",slot:"feet",id:"2"}],custom_name={text:'黎明の跳躍',color:'white',italic:0b},dyed_color=0,enchantments={"binding_curse":1},lore=[{text:'真よ。絶望よ。',color:'gray',italic:0b}],unbreakable={}]
item replace entity @p armor.feet from entity @p container.5
clear @p minecraft:leather_boots 1

#食料
give @p minecraft:bread 64

#ピック宣言
title @a[tag=Standbypick] title [{selector:'@p'},{text:'：祭司'}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-10 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}

#初期化が完全に完了した後にWraithタグを付与
tag @p add Wraith
