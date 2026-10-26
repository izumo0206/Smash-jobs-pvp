#エンドロール




#近場の人に向かってやってる
tag @p add endroll
stopsound @p music
scoreboard players set @p endroll 0
playsound minecraft:music_disc.otherside master @p[tag=endroll] ~ ~ ~ 1000000 1 1
gamemode spectator @p

#レッドストーンブロック置く
execute as @e[tag=CentralControlSystem] at @s run setblock ~-1 ~ ~8 minecraft:redstone_block