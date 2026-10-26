scoreboard players add #flame_targets MKCalc 1
execute if score #flame_slow MKCalc matches 1 run effect give @s minecraft:slowness 3 0 true
summon minecraft:marker ~ ~ ~ {Tags:["MKFlameMarker","MKNew","MTentity"]}
scoreboard players operation @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] MKRange = #flame_radius MKCalc
scoreboard players operation @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] MKTimer = #flame_timer MKCalc
execute as @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] at @s run function main:pvp/magicking/spell/flame/place_fire
tag @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] remove MKNew
