# ==========================================
# [ 黄 / Yellow ]
# 効果: 発光
# 範囲: 10マス
# ==========================================
execute if entity @s[team=Red] run summon sheep ~ ~ ~ {Team:"Red",Color:4,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_yellow","new_sheep","MTentity"],CustomName:{"color":"yellow","text":"黄　発光　半径10マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}
execute if entity @s[team=Blue] run summon sheep ~ ~ ~ {Team:"Blue",Color:4,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_yellow","new_sheep","MTentity"],CustomName:{"color":"yellow","text":"黄　発光　半径10マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}

execute if entity @s[team=Red] run team join Red @e[tag=new_sheep]
execute if entity @s[team=Blue] run team join Blue @e[tag=new_sheep]
scoreboard players set @e[tag=new_sheep] sheep_age 0
function main:pvp/shepherd/check_limit
