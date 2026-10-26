#上昇気流実行

execute as @a[tag=Birdman] run effect give @s minecraft:jump_boost 1 8

kill @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}}]

scoreboard players set @a[tag=Birdman] birdman_axe 0

schedule function main:pvp/birdman/birdman_jump_sub 20