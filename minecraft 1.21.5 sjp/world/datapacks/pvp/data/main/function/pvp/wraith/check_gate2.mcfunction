#ゲート破壊チェック
execute if entity @s[team=Red] unless entity @e[tag=WraithTarget_Red_2,tag=WraithGate] run scoreboard players set @s wraith_type_2 0
execute if entity @s[team=Blue] unless entity @e[tag=WraithTarget_Blue_2,tag=WraithGate] run scoreboard players set @s wraith_type_2 0
execute unless entity @s[team=Red] unless entity @s[team=Blue] unless entity @e[tag=WraithTarget_2,tag=WraithGate] run scoreboard players set @s wraith_type_2 0
