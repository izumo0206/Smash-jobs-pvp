execute if score @s MKRandom matches 1 run function main:pvp/magicking/spell/chaos/swap
execute if score @s MKRandom matches 2 run function main:pvp/magicking/spell/chaos/random_kill
execute if score @s MKRandom matches 3 as @a[tag=MKChaosPool,sort=random,limit=1] run function main:pvp/magicking/spell/chaos/set_gravity
execute if score @s MKRandom matches 4 as @a[tag=MKChaosPool,sort=random,limit=1] run function main:pvp/magicking/spell/chaos/set_large
execute if score @s MKRandom matches 5 run function main:pvp/magicking/spell/chaos/set_small
