# ==========================================
# [ 空色 / Aqua ]
# 効果: 速度上昇Ⅱ
# 範囲: 6マス
# ==========================================
execute if entity @s[team=Red] run summon sheep ~ ~ ~ {Team:"Red",Color:3,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_aqua","new_sheep","MTentity"],CustomName:{"color":"aqua","text":"空色　速度上昇Ⅱ　半径6マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}
execute if entity @s[team=Blue] run summon sheep ~ ~ ~ {Team:"Blue",Color:3,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_aqua","new_sheep","MTentity"],CustomName:{"color":"aqua","text":"空色　速度上昇Ⅱ　半径6マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}

execute if entity @s[team=Red] run team join Red @e[tag=new_sheep]
execute if entity @s[team=Blue] run team join Blue @e[tag=new_sheep]
scoreboard players set @e[tag=new_sheep] sheep_age 0
function main:pvp/shepherd/check_limit
