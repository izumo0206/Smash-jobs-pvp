tag @s add DuskCurrent
tag @e[tag=DuskNew] remove DuskNew
execute anchored eyes positioned ^ ^ ^0.25 run summon minecraft:marker ~ ~ ~ {Tags:['DuskRaycast','DuskNew','MTentity']}
scoreboard players operation @e[tag=DuskNew,sort=nearest,limit=1] DuskOwner = @s DuskOwner
scoreboard players set @e[tag=DuskNew,sort=nearest,limit=1] DuskRange 0
execute if entity @s[team=Red] run team join Red @e[tag=DuskNew,sort=nearest,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[tag=DuskNew,sort=nearest,limit=1]
data modify entity @e[tag=DuskNew,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=DuskNew,sort=nearest,limit=1] at @s run function main:pvp/dusk/draw/raycast
tag @e[tag=DuskNew] remove DuskNew
tag @s remove DuskCurrent
