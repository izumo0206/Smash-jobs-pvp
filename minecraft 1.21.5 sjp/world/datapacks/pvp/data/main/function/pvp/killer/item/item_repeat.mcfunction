#キラー海賊

execute if entity @a[tag=Killer,scores={trident=1..}] run schedule function main:pvp/killer/item/pirate_sub 1t

execute if entity @a[tag=Killer,scores={trident=1..}] run scoreboard players set @a[tag=Killer] trident 0

execute as @e[type=minecraft:trident,nbt={inGround:true}] run kill @s