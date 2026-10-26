#アイテム復帰と消滅
execute at @s run item replace entity @p[tag=Wraith,distance=..3] hotbar.0 with golden_sword[custom_data={wraith_slot:0},attribute_modifiers=[{type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand",id:"wraith:sword_damage"},{type:"entity_interaction_range",amount:2,operation:"add_value",slot:"mainhand",id:"wraith:sword_range"}],custom_name={text:'黎明の長剣',color:'gold',italic:0b},lore=[{text:'虚よ。祈りよ。',color:'gray',italic:0b},{text:'Qキー: 自身を入口/出口に指定',color:'yellow',italic:0b},{text:'スニークCT200: 虚空(10秒間スペクテイター化)',color:'light_purple',italic:0b}],unbreakable={}]

execute as @p[tag=Wraith,distance=..3] at @s run function main:pvp/wraith/handle_slot0
kill @s
