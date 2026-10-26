#パイレーツ

execute if entity @a[tag=Pirate,scores={trident=1..}] run schedule function main:pvp/pirate/pirate_sub 5t

execute if entity @a[tag=Pirate,scores={trident=1..}] run scoreboard players set @a[tag=Pirate] trident 0

execute as @e[type=minecraft:trident,nbt={inGround:true}] run kill @s