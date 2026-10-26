#スロット4表示
execute if score @s wraith_type_4 matches 0 run title @s actionbar {text:'[ 座標4: 未登録 ]',color:'gray'}

#敵（刻印中）
execute if score @s wraith_type_4 matches 1 if entity @s[team=Red] run title @s actionbar [{text:'[ 座標4: 敵 (',color:'red'},{selector:'@a[tag=WraithTarget_Red_4,limit=1]',color:'white'},{text:') 残り ',color:'red'},{score:{name:'@s',objective:'wraith_mark_4'},color:'yellow'},{text:' tick ]',color:'gray'}]
execute if score @s wraith_type_4 matches 1 if entity @s[team=Blue] run title @s actionbar [{text:'[ 座標4: 敵 (',color:'red'},{selector:'@a[tag=WraithTarget_Blue_4,limit=1]',color:'white'},{text:') 残り ',color:'red'},{score:{name:'@s',objective:'wraith_mark_4'},color:'yellow'},{text:' tick ]',color:'gray'}]
execute if score @s wraith_type_4 matches 1 unless entity @s[team=Red] unless entity @s[team=Blue] run title @s actionbar [{text:'[ 座標4: 敵 (',color:'red'},{selector:'@a[tag=WraithTarget_4,limit=1]',color:'white'},{text:') 残り ',color:'red'},{score:{name:'@s',objective:'wraith_mark_4'},color:'yellow'},{text:' tick ]',color:'gray'}]

#味方（登録済）
execute if score @s wraith_type_4 matches 2 if entity @s[team=Red] run title @s actionbar [{text:'[ 座標4: 味方 (',color:'green'},{selector:'@a[tag=WraithTarget_Red_4,limit=1]',color:'white'},{text:') ]',color:'green'}]
execute if score @s wraith_type_4 matches 2 if entity @s[team=Blue] run title @s actionbar [{text:'[ 座標4: 味方 (',color:'green'},{selector:'@a[tag=WraithTarget_Blue_4,limit=1]',color:'white'},{text:') ]',color:'green'}]
execute if score @s wraith_type_4 matches 2 unless entity @s[team=Red] unless entity @s[team=Blue] run title @s actionbar [{text:'[ 座標4: 味方 (',color:'green'},{selector:'@a[tag=WraithTarget_4,limit=1]',color:'white'},{text:') ]',color:'green'}]

#ゲート（設置済）
execute if score @s wraith_type_4 matches 3 run title @s actionbar {text:'[ 座標4: ゲート4 ]',color:'aqua'}
