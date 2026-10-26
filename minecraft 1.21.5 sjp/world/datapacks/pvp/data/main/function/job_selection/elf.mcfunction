#エルフ

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:23,pool:"elf",job_name:"エルフ",job_function:"elf",sign_x:-4,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-4 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2



#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Elf

#持ち物
clear @p

give @p stick[lore=[{"color":"dark_green","text":"魔法を発動する"},{"color":"green","strikethrough":true,"text":"いいにおいがする"}],item_model="minecraft:elf_wand",unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable"]},attribute_modifiers=[{id:"attack_knockback",type:"attack_knockback",amount:1.5,operation:"add_value"}],item_name={"bold":true,"color":"dark_green","italic":true,"text":"ユグドラシルの杖"}] 1

give @p written_book[minecraft:written_book_content={title:"エルフの書",author:"",pages:[["",{"text":"回復魔法(小)","color":"light_purple","underlined":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s SelectJum 101"},"hover_event":{"action":"show_text","value":[{"text":"回復魔法(小)を発動"}]}},{"text":"\n味方に触れて回復させる","color":"light_purple"},{"text":"\n"},{"text":"回復魔法(大)","color":"light_purple","underlined":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s SelectJum 102"},"hover_event":{"action":"show_text","value":[{"text":"回復魔法(大)を発動"}]}},{"text":"\n味方全員を回復する","color":"light_purple"},{"text":"\n\n"},{"text":"身体強化(小)","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s SelectJum 111"},"hover_event":{"action":"show_text","value":[{"text":"身体強化(小)を発動"}]}},{"text":"\n味方に触れて強化させる","color":"gold"},{"text":"\n"},{"text":"身体強化(大)","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s SelectJum 112"},"hover_event":{"action":"show_text","value":[{"text":"身体強化(大)を発動"}]}},{"text":"\n味方全員を強化する","color":"gold"},{"text":"\n\n"},{"text":"結界魔法","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s SelectJum 121"},"hover_event":{"action":"show_text","value":[{"text":"結界魔法を発動"}]}},{"text":"\n周囲の味方の防御力が上昇","color":"aqua"},{"text":"\n"},{"text":"状態回復","color":"green","underlined":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s SelectJum 131"},"hover_event":{"action":"show_text","value":[{"text":"状態回復を発動"}]}},{"text":"\n味方の状態を回復","color":"green"}]]},lore=[{"text":"クリックでスキルを選択"},{"color":"dark_purple","strikethrough":true,"text":"いいにおいがする"}],tooltip_display={hide_tooltip:false,hidden_components:["written_book_content"]}]

give @p golden_carrot[item_name={"bold":true,"color":"gold","italic":true,"text":"秘伝のニンジン"},lore=[{"color":"yellow","text":"エルフの里で採れるとてもおいしいニンジン"},{"color":"yellow","text":"美味しそうなにおいがする"}],enchantments={"minecraft:fortune":10}] 64

give @p stick[item_name={"bold":true,"italic":true,"text":"エルフの耳"},lore=[{"italic":true,"text":"かわいい耳"}],item_model="minecraft:elf_ear",unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["custom_model_data","unbreakable","enchantments"]},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false] 1

item replace entity @p armor.head from entity @p container.3

clear @p stick[item_name={"bold":true,"italic":true,"text":"エルフの耳"},lore=[{"italic":true,"text":"かわいい耳"}],item_model="minecraft:elf_ear",unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["custom_model_data","unbreakable","enchantments"]},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false] 1

scoreboard players set @p ElfMP 1000
scoreboard players set @p ElfCooldown 0


#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:max_health base set 26
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 0.9
attribute @p minecraft:movement_speed base set 0.12

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：エルフ"}]


#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-4 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
