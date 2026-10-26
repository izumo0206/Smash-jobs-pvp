#眠りを解除する
tag @s remove HsSleeping
scoreboard players set @s HsSleep 0
attribute @s minecraft:movement_speed modifier remove main:hs_sleep
attribute @s minecraft:jump_strength modifier remove main:hs_sleep
effect clear @s minecraft:blindness
