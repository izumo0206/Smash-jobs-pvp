playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1

execute as @e[type=minecraft:player,team=Blue,x=16,y=2,z=10015,dx=-5,dy=1,dz=-5] at @r[team=Red,x=6,y=2,z=10006,dx=-5,dy=1,dz=-4] run tp 4 1 10009

execute as @e[type=minecraft:player,team=Red,x=6,y=2,z=10006,dx=-5,dy=1,dz=-5] at @r[team=Blue,x=6,y=2,z=10006,dx=-5,dy=1,dz=-4] run tp 13 1 10009

execute as @e[type=minecraft:player,team=Red] at @p[limit=1] run tp 3 6 10003

execute as @e[type=minecraft:player,team=Blue] at @p[limit=1] run tp 14 6 10003