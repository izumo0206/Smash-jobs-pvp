#ハンター　リピート


scoreboard players set @a[tag=Hunter,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Hunter,scores={dash=1..}] sneak 0
scoreboard players set @a[tag=Hunter,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Hunter,scores={dash=1..}] dash 0
scoreboard players set @a[tag=Hunter,scores={Jump=3..}] Jump 0


#詠唱時パーティクル
execute as @a[tag=Hunter,scores={sneak=1..}] run execute at @s run particle minecraft:effect ~ ~1 ~ 1 1 1 1 1 normal

#ハンターの矢回収
execute if entity @a[tag=Hunter,scores={Huntercross=1..}] run function main:pvp/hunter/hunter_allow2

#ハンターの特殊矢回収
execute if entity @a[tag=Hunter] run function main:pvp/hunter/hunter_allow