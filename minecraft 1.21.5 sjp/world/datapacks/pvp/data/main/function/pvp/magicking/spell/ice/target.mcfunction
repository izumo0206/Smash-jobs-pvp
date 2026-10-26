scoreboard players add #ice_targets MKCalc 1
execute if score #ice_slow MKCalc matches 1 run effect give @s minecraft:slowness 5 9 true
summon minecraft:marker ~ ~ ~ {Tags:["MKIceMarker","MKNew","MTentity"]}
scoreboard players set @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] MKTimer 100
execute at @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:powder_snow keep
tag @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] remove MKNew
