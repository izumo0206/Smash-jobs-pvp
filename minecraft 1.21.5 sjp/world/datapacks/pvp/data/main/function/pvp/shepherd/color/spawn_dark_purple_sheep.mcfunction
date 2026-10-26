# ==========================================
# [ 赤紫 / Dark Purple ]
# 効果: 味方超強化・衰弱
# 範囲: 4マス
# ==========================================
execute if entity @s[team=Red] run summon sheep ~ ~ ~ {Team:"Red",Color:2,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_kamikaze","new_sheep","MTentity"],ActiveEffects:[{Id:"minecraft:speed",Amplifier:1b,Duration:-1},{Id:"minecraft:strength",Amplifier:1b,Duration:-1},{Id:"minecraft:wither",Amplifier:7b,Duration:-1}],CustomName:{"color":"dark_purple","text":"赤紫　味方超強化・衰弱　半径4マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}
execute if entity @s[team=Blue] run summon sheep ~ ~ ~ {Team:"Blue",Color:2,CustomNameVisible:1b,Health:14f,Tags:["shepherd_sheep","shep_kamikaze","new_sheep","MTentity"],ActiveEffects:[{Id:"minecraft:speed",Amplifier:1b,Duration:-1},{Id:"minecraft:strength",Amplifier:1b,Duration:-1},{Id:"minecraft:wither",Amplifier:7b,Duration:-1}],CustomName:{"color":"dark_purple","text":"赤紫　味方超強化・衰弱　半径4マス"},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0}]}

execute if entity @s[team=Red] run team join Red @e[tag=new_sheep]
execute if entity @s[team=Blue] run team join Blue @e[tag=new_sheep]
scoreboard players set @e[tag=new_sheep] sheep_age 0
function main:pvp/shepherd/check_limit
