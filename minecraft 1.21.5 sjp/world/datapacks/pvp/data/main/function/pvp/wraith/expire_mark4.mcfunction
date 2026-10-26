#刻印切れ
execute if entity @s[team=Red] run tag @e[tag=WraithTarget_Red_4] remove WraithTarget_Red_4
execute if entity @s[team=Blue] run tag @e[tag=WraithTarget_Blue_4] remove WraithTarget_Blue_4
execute unless entity @s[team=Red] unless entity @s[team=Blue] run tag @e[tag=WraithTarget_4] remove WraithTarget_4
scoreboard players set @s wraith_type_4 0
title @s actionbar {text:'[ 座標4 の刻印が切れました ]',color:'gray'}
