tag @s add DuskCurrent
tag @e[tag=DuskNew] remove DuskNew
execute anchored eyes positioned ^ ^ ^0.75 run summon minecraft:marker ~ ~ ~ {Tags:['DuskBrushProjectile','DuskNew','MTentity']}
scoreboard players operation @e[tag=DuskNew,sort=nearest,limit=1] DuskOwner = @s DuskOwner
scoreboard players set @e[tag=DuskNew,sort=nearest,limit=1] DuskRange 0
execute if entity @s[team=Red] run team join Red @e[tag=DuskNew,sort=nearest,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[tag=DuskNew,sort=nearest,limit=1]
data modify entity @e[tag=DuskNew,sort=nearest,limit=1] Rotation set from entity @s Rotation
tag @e[tag=DuskNew,sort=nearest,limit=1] remove DuskNew
playsound minecraft:entity.squid.squirt player @s ~ ~ ~ 0.8 1.2
tag @s remove DuskCurrent
