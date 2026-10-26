#刻印切れ
execute if entity @s[team=Red] run tag @e[tag=WraithTarget_Red_3] remove WraithTarget_Red_3
execute if entity @s[team=Blue] run tag @e[tag=WraithTarget_Blue_3] remove WraithTarget_Blue_3
execute unless entity @s[team=Red] unless entity @s[team=Blue] run tag @e[tag=WraithTarget_3] remove WraithTarget_3
scoreboard players set @s wraith_type_3 0
title @s actionbar {text:'[ 座標3 の刻印が切れました ]',color:'gray'}
