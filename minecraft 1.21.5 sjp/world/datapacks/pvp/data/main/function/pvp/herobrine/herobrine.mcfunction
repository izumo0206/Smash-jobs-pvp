#ヘロブライン　リピート


scoreboard players set @a[tag=Herobrine,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Herobrine,scores={dash=1..}] sneak 0
scoreboard players set @a[tag=Herobrine,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Herobrine,scores={dash=1..}] dash 0
scoreboard players remove @a[tag=Herobrine,scores={redstonecooldown=1..}] redstonecooldown 1


#詠唱時パーティクル
execute as @a[tag=Herobrine,scores={sneak=1..}] run execute at @s run particle minecraft:enchant ~ ~1 ~ 1 1 1 1 1 normal


#真実の扉
execute if entity @a[tag=Herobrine] run function main:pvp/herobrine/herobrine_door

#誠実なる友
execute if entity @a[tag=Herobrine,scores={health=..20,redstonecooldown=..0},nbt={Inventory:[{id:"minecraft:redstone"}]}] run function main:pvp/herobrine/herobrine_redstone