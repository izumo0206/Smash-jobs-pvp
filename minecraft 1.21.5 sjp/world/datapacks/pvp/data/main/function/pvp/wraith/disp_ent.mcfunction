#入口選択中表示
execute if score @s wraith_ent matches 0 run title @s actionbar {text:'【入口: 自身】➔ 出口をQ / 武器を再Qでキャンセル',color:'yellow'}
execute if score @s wraith_ent matches 1 run title @s actionbar {text:'【入口: 座標1】➔ 出口をQ / 座標1を再Qでキャンセル',color:'aqua'}
execute if score @s wraith_ent matches 2 run title @s actionbar {text:'【入口: 座標2】➔ 出口をQ / 座標2を再Qでキャンセル',color:'aqua'}
execute if score @s wraith_ent matches 3 run title @s actionbar {text:'【入口: 座標3】➔ 出口をQ / 座標3を再Qでキャンセル',color:'aqua'}
execute if score @s wraith_ent matches 4 run title @s actionbar {text:'【入口: 座標4】➔ 出口をQ / 座標4を再Qでキャンセル',color:'aqua'}
