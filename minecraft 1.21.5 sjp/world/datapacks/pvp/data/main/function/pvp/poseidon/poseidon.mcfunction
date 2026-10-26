#異端者

execute if entity @a[tag=Poseidon,scores={trident=1..}] run schedule function main:pvp/poseidon/poseidon_sub 8t

execute if entity @a[tag=Poseidon,scores={trident=1..}] run scoreboard players set @a[tag=Poseidon] trident 0

execute as @e[type=minecraft:trident,nbt={inGround:true}] run kill @s