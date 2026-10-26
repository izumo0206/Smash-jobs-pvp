#ワープ実行
tag @p add Wraithwarp2

#効果音
execute at @a[tag=Wraithwarp2] run playsound minecraft:block.respawn_anchor.charge master @p ~ ~ ~ 10

#転送とバフ
execute at @e[team=Blue,tag=Wraithfront2] run tp @p[team=Blue,tag=Wraithwarp2] @e[tag=Wraithbackside2,team=Blue,limit=1]
execute at @e[team=Blue,tag=Wraithfront2] run tag @p[team=Blue,tag=Wraithwarp2] add Yogsbuff
execute at @e[team=Blue,tag=Wraithfront2] run effect give @p[team=Blue,tag=Wraithwarp2] minecraft:resistance 1 6
execute at @e[team=Red,tag=Wraithfront2] run tp @p[team=Red,tag=Wraithwarp2] @e[tag=Wraithbackside2,team=Red,limit=1]
execute at @e[team=Red,tag=Wraithfront2] run tag @p[team=Red,tag=Wraithwarp2] add Yogsbuff
execute at @e[team=Red,tag=Wraithfront2] run effect give @p[team=Red,tag=Wraithwarp2] minecraft:resistance 1 6

#仕上げ
execute at @a[tag=Yogsbuff] run scoreboard players set @p WraithWarpCooldown 100
execute at @a[tag=Yogsbuff] run scoreboard players set @p WraithBuffCooldown 200

execute as @a[tag=Wraithwarp2] run tag @s remove Wraithwarp2