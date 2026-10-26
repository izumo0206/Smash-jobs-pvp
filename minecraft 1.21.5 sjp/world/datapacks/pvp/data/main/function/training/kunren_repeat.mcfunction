#エペの訓練場のずっとリピートしとくやつ

execute at @e[tag=KunrennkoMato] unless block ~ ~ ~ minecraft:target[power=0] if block ~ ~ ~ minecraft:target run setblock ~ ~ ~ minecraft:light_blue_wool

schedule function main:training/kunren_replase_target 25t