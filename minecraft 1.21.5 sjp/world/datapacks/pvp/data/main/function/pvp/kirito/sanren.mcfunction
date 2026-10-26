execute as @a[tag=Da-kuriparusa-4,tag=Eryuside-ta4] at @s run tag @p add Sanren

execute at @a[tag=Sanren] run particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 1 50 normal

execute at @a[tag=Sanren] run playsound minecraft:entity.wither.spawn master @a[tag=Kirito] ~ ~ ~ 1 2 1

execute as @a[tag=Sanren] at @s run effect give @a[tag=Sanren] minecraft:regeneration 8 2
execute as @a[tag=Sanren] at @s run effect give @a[tag=Sanren] minecraft:resistance 6 1
execute as @a[tag=Sanren] at @s run effect give @a[tag=Sanren] minecraft:strength 6 1
execute as @a[tag=Sanren] at @s run effect give @a[tag=Sanren] minecraft:speed 8 1

clear @a[tag=Sanren] minecraft:light_blue_dye
clear @a[tag=Sanren] minecraft:black_dye

tag @a[tag=Sanren] remove Eryuside-ta1
tag @a[tag=Sanren] remove Eryuside-ta2
tag @a[tag=Sanren] remove Eryuside-ta3
tag @a[tag=Sanren] remove Eryuside-ta4
tag @a[tag=Sanren] remove Da-kuriparusa-1
tag @a[tag=Sanren] remove Da-kuriparusa-2
tag @a[tag=Sanren] remove Da-kuriparusa-3
tag @a[tag=Sanren] remove Da-kuriparusa-4
tag @a[tag=Sanren] remove Sanren