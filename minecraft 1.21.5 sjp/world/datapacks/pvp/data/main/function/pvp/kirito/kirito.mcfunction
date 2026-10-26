execute as @a[tag=Eryuside-ta1,tag=Da-kuriparusa-1] at @s run effect give @s minecraft:speed 1 0

execute as @a[tag=Eryuside-ta2,tag=Da-kuriparusa-2] at @s run effect give @s minecraft:resistance 1 0

execute as @a[tag=Eryuside-ta3,tag=Da-kuriparusa-3] at @s run effect give @s minecraft:strength 1 0

execute if entity @a[tag=Kirito] run function main:pvp/kirito/sanren

#ソード使用確認
execute as @a[tag=Kirito,scores={diamond_sword=1..}] at @s run function main:used_da-kuriparusa-
execute as @a[tag=Kirito,scores={netherite_sword=1..}] at @s run function main:used_eryuside-ta