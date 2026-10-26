#スロット1表示
execute if score @s wraith_type_1 matches 0 run title @s actionbar {text:'[ 座標1: 未登録 ]',color:'gray'}

#敵（刻印中）
execute if score @s wraith_type_1 matches 1 if entity @s[team=Red] run title @s actionbar [{text:'[ 座標1: 敵 (',color:'red'},{selector:'@a[tag=WraithTarget_Red_1,limit=1]',color:'white'},{text:') 残り ',color:'red'},{score:{name:'@s',objective:'wraith_mark_1'},color:'yellow'},{text:' tick ]',color:'gray'}]
execute if score @s wraith_type_1 matches 1 if entity @s[team=Blue] run title @s actionbar [{text:'[ 座標1: 敵 (',color:'red'},{selector:'@a[tag=WraithTarget_Blue_1,limit=1]',color:'white'},{text:') 残り ',color:'red'},{score:{name:'@s',objective:'wraith_mark_1'},color:'yellow'},{text:' tick ]',color:'gray'}]
execute if score @s wraith_type_1 matches 1 unless entity @s[team=Red] unless entity @s[team=Blue] run title @s actionbar [{text:'[ 座標1: 敵 (',color:'red'},{selector:'@a[tag=WraithTarget_1,limit=1]',color:'white'},{text:') 残り ',color:'red'},{score:{name:'@s',objective:'wraith_mark_1'},color:'yellow'},{text:' tick ]',color:'gray'}]

#味方（登録済）
execute if score @s wraith_type_1 matches 2 if entity @s[team=Red] run title @s actionbar [{text:'[ 座標1: 味方 (',color:'green'},{selector:'@a[tag=WraithTarget_Red_1,limit=1]',color:'white'},{text:') ]',color:'green'}]
execute if score @s wraith_type_1 matches 2 if entity @s[team=Blue] run title @s actionbar [{text:'[ 座標1: 味方 (',color:'green'},{selector:'@a[tag=WraithTarget_Blue_1,limit=1]',color:'white'},{text:') ]',color:'green'}]
execute if score @s wraith_type_1 matches 2 unless entity @s[team=Red] unless entity @s[team=Blue] run title @s actionbar [{text:'[ 座標1: 味方 (',color:'green'},{selector:'@a[tag=WraithTarget_1,limit=1]',color:'white'},{text:') ]',color:'green'}]

#ゲート（設置済）
execute if score @s wraith_type_1 matches 3 run title @s actionbar {text:'[ 座標1: ゲート1 ]',color:'aqua'}
