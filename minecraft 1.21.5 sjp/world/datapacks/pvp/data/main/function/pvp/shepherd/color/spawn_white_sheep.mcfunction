# ==========================================
# [ 白 / White ]
# 効果: 透明化
# 範囲: 4マス
# ==========================================
execute if entity @s[team=Red] run summon sheep ~ ~ ~ {Team:"Red",Color:0,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_white","new_sheep","MTentity"],CustomName:{"color":"white","text":"白　透明化　半径4マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}
execute if entity @s[team=Blue] run summon sheep ~ ~ ~ {Team:"Blue",Color:0,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_white","new_sheep","MTentity"],CustomName:{"color":"white","text":"白　透明化　半径4マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}

execute if entity @s[team=Red] run team join Red @e[tag=new_sheep]
execute if entity @s[team=Blue] run team join Blue @e[tag=new_sheep]
scoreboard players set @e[tag=new_sheep] sheep_age 0
function main:pvp/shepherd/check_limit
