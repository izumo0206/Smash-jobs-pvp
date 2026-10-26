summon minecraft:marker ~ ~ ~ {Tags:["MKWaterWall","MKNew","MTentity"]}
scoreboard players operation @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] MKOwner = @s MKOwner
scoreboard players operation @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] MKTimer = @s MKDuration
scoreboard players operation @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] MKTimer *= #20 MKCalc
tag @e[type=minecraft:marker,tag=MKNew,sort=nearest,limit=1] remove MKNew
