function main:pvp/dusk/draw/select_target
execute if entity @s[team=Red] at @e[tag=DuskCastTarget,limit=1] run summon minecraft:vex ~-0.5 ~0.5 ~ {Team:'Red',Health:10f,Tags:['kozizai','DuskNew','MTentity'],CustomName:{text:'子自在'},equipment:{mainhand:{id:'minecraft:iron_sword',count:1}},attributes:[{id:'minecraft:attack_damage',base:4.0},{id:'minecraft:follow_range',base:20.0},{id:'minecraft:max_health',base:10.0}]}
execute if entity @s[team=Red] at @e[tag=DuskCastTarget,limit=1] run summon minecraft:vex ~0.5 ~0.5 ~ {Team:'Red',Health:10f,Tags:['kozizai','DuskNew','MTentity'],CustomName:{text:'子自在'},equipment:{mainhand:{id:'minecraft:iron_sword',count:1}},attributes:[{id:'minecraft:attack_damage',base:4.0},{id:'minecraft:follow_range',base:20.0},{id:'minecraft:max_health',base:10.0}]}
execute if entity @s[team=Blue] at @e[tag=DuskCastTarget,limit=1] run summon minecraft:vex ~-0.5 ~0.5 ~ {Team:'Blue',Health:10f,Tags:['kozizai','DuskNew','MTentity'],CustomName:{text:'子自在'},equipment:{mainhand:{id:'minecraft:iron_sword',count:1}},attributes:[{id:'minecraft:attack_damage',base:4.0},{id:'minecraft:follow_range',base:20.0},{id:'minecraft:max_health',base:10.0}]}
execute if entity @s[team=Blue] at @e[tag=DuskCastTarget,limit=1] run summon minecraft:vex ~0.5 ~0.5 ~ {Team:'Blue',Health:10f,Tags:['kozizai','DuskNew','MTentity'],CustomName:{text:'子自在'},equipment:{mainhand:{id:'minecraft:iron_sword',count:1}},attributes:[{id:'minecraft:attack_damage',base:4.0},{id:'minecraft:follow_range',base:20.0},{id:'minecraft:max_health',base:10.0}]}
scoreboard players operation @e[tag=DuskNew] DuskOwner = @s DuskOwner
scoreboard players set @e[tag=DuskNew] rabbit 0
tag @e[tag=DuskNew] remove DuskNew
playsound minecraft:entity.vex.charge master @s ~ ~ ~ 1 1.2
scoreboard players set @s DuskCooldown 100
function main:pvp/dusk/draw/finish
