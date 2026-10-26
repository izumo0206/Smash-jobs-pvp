#特殊落下攻撃

execute as @a[tag=Thor,scores={ThorFallingAttackCooldown=..0,Zimen=14..,Land=1..}] run tag @s add ThorUlt

execute at @a[tag=ThorUlt] run effect give @p minecraft:resistance 1 200



execute at @a[tag=ThorUlt] run summon minecraft:creeper ~ 1 ~ {Tags:["MTentity"],Fuse:0.2,ignited:1b,ExplosionRadius:0b,Silent:true,Invulerable:true}

execute at @e[tag=ThorUlt] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}

execute at @a[tag=ThorUlt,scores={ThorFallingAttack=1..},team=Blue] run execute at @e[team=Red,distance=..8] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute at @a[tag=ThorUlt,scores={ThorFallingAttack=1..},team=Red] run execute at @e[team=Blue,distance=..8] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}


scoreboard players set @a[tag=Thor] Zimen 0
scoreboard players set @a[tag=Thor] ThorFallingAttack 0
tag @a[tag=ThorUlt] remove ThorUlt
