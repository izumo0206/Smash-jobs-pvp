#異端者

execute if entity @a[tag=Heretic,scores={trident=1..}] run schedule function main:pvp/heretic/heretic_sub 8t

execute if entity @a[tag=Heretic,scores={trident=1..}] run scoreboard players set @a[tag=Heretic] trident 0

execute as @e[type=minecraft:trident,nbt={inGround:true}] run kill @s