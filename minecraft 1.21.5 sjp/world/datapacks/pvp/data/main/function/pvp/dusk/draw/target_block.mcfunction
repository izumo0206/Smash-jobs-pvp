#天井や壁面への描画は不成立
execute positioned ~ ~1 ~ unless block ~ ~ ~ #minecraft:replaceable run return run kill @s

#ブロック上面中央へ描画地点を作る
tag @e[tag=DuskNewTarget] remove DuskNewTarget
execute align xyz positioned ~0.5 ~1 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:['DuskDrawTarget','DuskNewTarget','MTentity']}
scoreboard players operation @e[tag=DuskNewTarget,sort=nearest,limit=1] DuskOwner = @s DuskOwner
execute if entity @s[team=Red] run team join Red @e[tag=DuskNewTarget,sort=nearest,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[tag=DuskNewTarget,sort=nearest,limit=1]

#上下視線を捨て、最も近い東西南北へ向きを丸める
data modify entity @e[tag=DuskNewTarget,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=DuskNewTarget,sort=nearest,limit=1,y_rotation=-45..45] at @s run tp @s ~ ~ ~ 0 0
execute as @e[tag=DuskNewTarget,sort=nearest,limit=1,y_rotation=45..135] at @s run tp @s ~ ~ ~ 90 0
execute as @e[tag=DuskNewTarget,sort=nearest,limit=1,y_rotation=-135..-45] at @s run tp @s ~ ~ ~ -90 0
execute as @e[tag=DuskNewTarget,sort=nearest,limit=1,y_rotation=135..180] at @s run tp @s ~ ~ ~ 180 0
execute as @e[tag=DuskNewTarget,sort=nearest,limit=1,y_rotation=-180..-135] at @s run tp @s ~ ~ ~ 180 0

tag @e[tag=DuskNewTarget,sort=nearest,limit=1] remove DuskNewTarget
tag @a[tag=DuskCurrent,limit=1] add DuskHasTarget
kill @s
