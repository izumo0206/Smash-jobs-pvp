#アイテム復帰と消滅
execute at @s run item replace entity @p[tag=Wraith,distance=..3] hotbar.1 with warped_fungus_on_a_stick[custom_data={wraith_slot:1},attribute_modifiers=[{type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand",id:"wraith:coord1_damage"},{type:"attack_speed",amount:4,operation:"add_value",slot:"mainhand",id:"wraith:coord1_speed"}],custom_name={text:'座標1',color:'aqua',italic:0b},lore=[{text:'右クリック: ゲート生成',color:'gray',italic:0b},{text:'味方の近くでスニーク: 味方登録(4ダメ)',color:'gray',italic:0b},{text:'敵を攻撃: 刻印付与(20秒)',color:'gray',italic:0b},{text:'Qキー: 入口/出口に指定',color:'yellow',italic:0b}],unbreakable={}]

execute as @p[tag=Wraith,distance=..3] at @s run function main:pvp/wraith/handle_slot1
kill @s
