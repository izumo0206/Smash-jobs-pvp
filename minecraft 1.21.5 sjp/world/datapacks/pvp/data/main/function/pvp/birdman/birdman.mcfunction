#バードマン　リピート




scoreboard players set @a[tag=Birdman,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Birdman,scores={dash=1..}] sneak 0
scoreboard players set @a[tag=Birdman,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Birdman,scores={dash=1..}] dash 0
scoreboard players set @a[tag=Birdman,scores={BirdmanCooldown=1..}] sneak 0
execute at @a[tag=Birdman] unless block ~ ~-1 ~ minecraft:air run scoreboard players remove @a[tag=Birdman,scores={BirdmanCooldown=1..}] BirdmanCooldown 1


#詠唱時パーティクル
execute as @a[tag=Birdman,scores={sneak=1..}] run execute at @s run particle minecraft:effect ~ ~1 ~ 1 1 1 1 1 normal


#バードマンの花火回収
execute if entity @a[tag=Birdman] run function main:pvp/birdman/birdman_allow

#上昇気流
execute if entity @a[tag=Birdman,scores={birdman_axe=1..}] run function main:pvp/birdman/birdman_jump
