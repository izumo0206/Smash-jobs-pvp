#刻印切れ
execute if entity @s[team=Red] run tag @e[tag=WraithTarget_Red_1] remove WraithTarget_Red_1
execute if entity @s[team=Blue] run tag @e[tag=WraithTarget_Blue_1] remove WraithTarget_Blue_1
execute unless entity @s[team=Red] unless entity @s[team=Blue] run tag @e[tag=WraithTarget_1] remove WraithTarget_1
scoreboard players set @s wraith_type_1 0
title @s actionbar {text:'[ 座標1 の刻印が切れました ]',color:'gray'}
