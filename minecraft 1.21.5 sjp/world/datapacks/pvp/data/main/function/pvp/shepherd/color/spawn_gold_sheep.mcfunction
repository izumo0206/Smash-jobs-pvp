# ==========================================
# [ 橙 / Gold ]
# 効果: 耐性・再生・火炎耐性
# 範囲: 5マス
# ==========================================
execute if entity @s[team=Red] run summon sheep ~ ~ ~ {Team:"Red",Color:1,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_gold","new_sheep","MTentity"],CustomName:{"color":"gold","text":"橙　耐性・再生・火炎耐性　半径5マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}
execute if entity @s[team=Blue] run summon sheep ~ ~ ~ {Team:"Blue",Color:1,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_gold","new_sheep","MTentity"],CustomName:{"color":"gold","text":"橙　耐性・再生・火炎耐性　半径5マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}

execute if entity @s[team=Red] run team join Red @e[tag=new_sheep]
execute if entity @s[team=Blue] run team join Blue @e[tag=new_sheep]
scoreboard players set @e[tag=new_sheep] sheep_age 0
function main:pvp/shepherd/check_limit
