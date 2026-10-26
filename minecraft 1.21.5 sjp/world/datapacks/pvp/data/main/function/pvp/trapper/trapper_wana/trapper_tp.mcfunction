#転送の罠実行



execute at @e[tag=enter] run execute at @a[distance=..2] run tp @p @e[tag=exit,limit=1]

playsound minecraft:entity.allay.item_thrown master @p ~ ~ ~ 10


kill @e[tag=enter]

kill @e[tag=exit]
