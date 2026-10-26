#完全初期化


#表示
tellraw @a {"text":"完全初期化ボタンを押すと\nスコアボードが全て初期化されます\nゲームプレイ中に初期化すると不具合が生じる可能性があります\nそれでもよろしければ完全初期化ボタンを\n押してください","color":"red"}

#ボタン 看板設置
setblock 4998 1 5017 minecraft:polished_blackstone_button destroy
setblock 4998 2 5017 minecraft:birch_wall_sign destroy
data merge block 4998 2 5017 {Text1:'{"text":"完全初期化","color":"dark_red"}',Text2:'{"text":""}',Text3:'{"text":"必要な時のみ","color":"dark_red"}',Text4:'{"text":"押してください","color":"dark_red"}'}


#安全装置
schedule function main:waiting_place/initialization_sub 200t