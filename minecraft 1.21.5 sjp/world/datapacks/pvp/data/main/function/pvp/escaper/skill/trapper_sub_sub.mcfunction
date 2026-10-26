#罠実行

playsound minecraft:entity.wither.ambient master @p ~ ~ ~ 10

effect give @p minecraft:wither 5 1
effect give @p minecraft:blindness 5 50
effect give @p minecraft:glowing 5 1

kill @e[tag=Escapertrap]