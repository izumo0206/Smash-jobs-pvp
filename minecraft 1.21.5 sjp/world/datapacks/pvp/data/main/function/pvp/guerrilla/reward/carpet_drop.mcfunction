scoreboard players operation @s GuCount -= #dur GuCalc
summon creeper ~ ~-4 ~ {powered:1b,Fuse:32767s,ExplosionRadius:0b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["GuBomb","GuNew"],attributes:[{id:"minecraft:follow_range",base:0.0d}]}
scoreboard players operation @e[type=creeper,tag=GuNew] GuID = @s GuID
execute if entity @s[tag=GuBlue] run tag @e[type=creeper,tag=GuNew] add GuBlue
execute if entity @s[tag=GuRed] run tag @e[type=creeper,tag=GuNew] add GuRed
scoreboard players set @e[type=creeper,tag=GuNew] GuTimer 0
tag @e[type=creeper,tag=GuNew] remove GuNew
