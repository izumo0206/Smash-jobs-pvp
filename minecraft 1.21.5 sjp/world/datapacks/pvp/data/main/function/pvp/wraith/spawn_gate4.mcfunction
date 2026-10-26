#スロット4のゲート生成

#Redチーム
execute if entity @s[team=Red] run kill @e[tag=WraithTarget_Red_4,tag=WraithGate]
execute if entity @s[team=Red] run tag @e[tag=WraithTarget_Red_4] remove WraithTarget_Red_4
execute if entity @s[team=Red] at @s run summon allay ~ ~ ~ {CustomName:{text:'ゲート4',color:'aqua'},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["WraithGate","WraithTarget_Red_4","MTentity"],Team:"Red"}

#Blueチーム
execute if entity @s[team=Blue] run kill @e[tag=WraithTarget_Blue_4,tag=WraithGate]
execute if entity @s[team=Blue] run tag @e[tag=WraithTarget_Blue_4] remove WraithTarget_Blue_4
execute if entity @s[team=Blue] at @s run summon allay ~ ~ ~ {CustomName:{text:'ゲート4',color:'aqua'},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["WraithGate","WraithTarget_Blue_4","MTentity"],Team:"Blue"}

#チームなし
execute unless entity @s[team=Red] unless entity @s[team=Blue] run kill @e[tag=WraithTarget_4,tag=WraithGate]
execute unless entity @s[team=Red] unless entity @s[team=Blue] run tag @e[tag=WraithTarget_4] remove WraithTarget_4
execute unless entity @s[team=Red] unless entity @s[team=Blue] at @s run summon allay ~ ~ ~ {CustomName:{text:'ゲート4',color:'aqua'},CustomNameVisible:1b,NoAI:1b,Silent:1b,Tags:["WraithGate","WraithTarget_4","MTentity"]}

scoreboard players set @s wraith_type_4 3
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn master @s ~ ~ ~ 1 1.2
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.05 30
title @s actionbar {text:'[ 座標4 にゲートを設置しました ]',color:'aqua'}
