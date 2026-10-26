#ワープ実行
tag @p add Wraithwarp1

#効果音
execute at @a[tag=Wraithwarp1] run playsound minecraft:block.respawn_anchor.charge master @p ~ ~ ~ 10

#転送とバフ
execute at @e[team=Blue,tag=Wraithfront1] run tp @p[team=Blue,tag=Wraithwarp1] @e[tag=Wraithbackside1,team=Blue,limit=1]
execute at @e[team=Blue,tag=Wraithfront1] run tag @p[team=Blue,tag=Wraithwarp1] add Yogsbuff
execute at @e[team=Blue,tag=Wraithfront1] run effect give @p[team=Blue,tag=Wraithwarp1] minecraft:resistance 1 6
execute at @e[team=Red,tag=Wraithfront1] run tp @p[team=Red,tag=Wraithwarp1] @e[tag=Wraithbackside1,team=Red,limit=1]
execute at @e[team=Red,tag=Wraithfront1] run tag @p[team=Red,tag=Wraithwarp1] add Yogsbuff
execute at @e[team=Red,tag=Wraithfront1] run effect give @p[team=Red,tag=Wraithwarp1] minecraft:resistance 1 6

#仕上げ
execute at @a[tag=Yogsbuff] run scoreboard players set @p WraithWarpCooldown 100
execute at @a[tag=Yogsbuff] run scoreboard players set @p WraithBuffCooldown 200

execute as @a[tag=Wraithwarp1] run tag @s remove Wraithwarp1