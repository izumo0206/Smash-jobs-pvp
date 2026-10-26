#刻印切れ
execute if entity @s[team=Red] run tag @e[tag=WraithTarget_Red_2] remove WraithTarget_Red_2
execute if entity @s[team=Blue] run tag @e[tag=WraithTarget_Blue_2] remove WraithTarget_Blue_2
execute unless entity @s[team=Red] unless entity @s[team=Blue] run tag @e[tag=WraithTarget_2] remove WraithTarget_2
scoreboard players set @s wraith_type_2 0
title @s actionbar {text:'[ 座標2 の刻印が切れました ]',color:'gray'}
