#羊飼い

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:24,pool:"shepherd",job_name:"羊飼い",job_function:"shepherd",sign_x:-5,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-5 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2



#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Shepherd
#持ち物
clear @p
give @p wheat[item_name="羊のエサ"] 64
give @p goat_horn[use_cooldown={seconds:0.1,cooldown_group:"1"}] 1
give @p minecraft:bread 64


give @p leather_leggings[trim={material:"minecraft:netherite",pattern:"minecraft:sentry"},item_name="羊飼いのズボン",attribute_modifiers=[{id:"armor",type:"armor",amount:1,operation:"add_value"}],unbreakable={}] 1
item replace entity @p armor.legs from entity @p container.3


give @p leather_boots[trim={material:"minecraft:netherite",pattern:"minecraft:sentry"},item_name="羊飼いのブーツ",unbreakable={}] 1
item replace entity @p armor.feet from entity @p container.4

give @p written_book[minecraft:written_book_content={title:"羊飼いの指示書",author:"システム",pages:[["",{"text":"赤","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_red_sheep"},"hover_event":{"action":"show_text","value":[{"text":"攻撃力上昇2"}]}},{"text":"\n橙","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_gold_sheep"},"hover_event":{"action":"show_text","value":[{"text":"火炎耐性、耐性1、再生1"}]}},{"text":"\n黄","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_yellow_sheep"},"hover_event":{"action":"show_text","value":[{"text":"発光"}]}},{"text":"\n黄緑","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_green_sheep"},"hover_event":{"action":"show_text","value":[{"text":"跳躍力上昇2、移動速度上昇1"}]}},{"text":"\n緑","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_dark_green_sheep"},"hover_event":{"action":"show_text","value":[{"text":"毒3"}]}},{"text":"\n青緑","color":"dark_aqua","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_dark_aqua_sheep"},"hover_event":{"action":"show_text","value":[{"text":"移動速度上昇1、耐性1、攻撃力上昇1"}]}},{"text":"\n空色","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_aqua_sheep"},"hover_event":{"action":"show_text","value":[{"text":"移動速度上昇2"}]}},{"text":"\n青","color":"blue","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_blue_sheep"},"hover_event":{"action":"show_text","value":[{"text":"移動速度低下2"}]}},{"text":"\n紫","color":"light_purple","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_light_purple_sheep"},"hover_event":{"action":"show_text","value":[{"text":"耐性2"}]}},{"text":"\n赤紫","color":"dark_purple","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_dark_purple_sheep"},"hover_event":{"action":"show_text","value":[{"text":"攻撃力上昇2、移動速度上昇2、耐性2、衰弱8"}]}},{"text":"\n桃","color":"light_purple","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_pink_sheep"},"hover_event":{"action":"show_text","value":[{"text":"再生2"}]}},{"text":"\n白","color":"white","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_white_sheep"},"hover_event":{"action":"show_text","value":[{"text":"透明"}]}},{"text":"\n灰色","color":"dark_gray","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_dark_gray_sheep"},"hover_event":{"action":"show_text","value":[{"text":"弱化1"}]}},{"text":"\n黒","color":"black","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/color/spawn_black_sheep"},"hover_event":{"action":"show_text","value":[{"text":"盲目"}]}}],[["",{"text":"：）","color":"black","bold":true,"click_event":{"action":"run_command","command":"/function main:pvp/shepherd/shepherd_mee"},"hover_event":{"action":"show_text","value":[{"text":"めー"}]}}]]]}]

clear @p minecraft:leather_leggings 1
clear @p minecraft:leather_boots 1

give @p trident[item_name="ピッチフォーク",enchantments={"minecraft:loyalty":1},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3,operation:"add_value"}]] 1
give @p minecraft:lead 64
give @p minecraft:lead 64

scoreboard players set @p ShepherdCooldown 0

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 30
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 1
attribute @p minecraft:movement_speed base set 0.1

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：羊飼い"}]


#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-5 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
