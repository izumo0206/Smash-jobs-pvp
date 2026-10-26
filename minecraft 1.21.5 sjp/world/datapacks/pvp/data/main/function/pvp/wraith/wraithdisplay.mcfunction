#アクションバー表示制御
execute if score @s wraith_spec_time matches 1.. run return run title @s actionbar [{text:'【虚空】発動中: 残り ',color:'light_purple'},{score:{name:'@s',objective:'wraith_spec_time'},color:'yellow'},{text:' tick',color:'gray'}]

execute if score @s wraith_cd matches 1.. run return run function main:pvp/wraith/disp_cd
execute if score @s wraith_ent matches 0.. run return run function main:pvp/wraith/disp_ent

#通常時（未選択状態での手持ち別表示）
execute if items entity @s weapon.mainhand golden_sword[custom_data~{wraith_slot:0}] run title @s actionbar [{text:'[ 座標: 自身 (未選択) ]  ',color:'gold'},{text:'虚空 CT200　CT : ',color:'dark_purple'},{score:{name:'@s',objective:'wraith_sword_ct'},color:'yellow'}]
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:1}] run function main:pvp/wraith/disp_slot1
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:2}] run function main:pvp/wraith/disp_slot2
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:3}] run function main:pvp/wraith/disp_slot3
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:4}] run function main:pvp/wraith/disp_slot4
