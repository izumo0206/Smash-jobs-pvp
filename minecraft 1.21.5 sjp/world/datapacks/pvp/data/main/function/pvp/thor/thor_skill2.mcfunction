#特殊落下攻撃

execute as @a[tag=Thor,scores={ThorFallingAttackCooldown=..0,Zimen=13..,Land=1..}] run tag @s add Thorflyattack

execute at @a[tag=Thorflyattack] run effect give @p minecraft:resistance 1 200

execute at @a[tag=Thorflyattack] run effect give @p minecraft:instant_health 1 1

execute at @a[tag=Thorflyattack] run summon minecraft:creeper ~ 1 ~ {Tags:["MTentity"],Fuse:0.2,ignited:1b,ExplosionRadius:0b,Silent:true,Invulerable:true}

execute at @e[tag=Thorflyattack] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}

execute at @a[tag=Thorflyattack,scores={ThorFallingAttack=1..},team=Blue] run execute at @e[team=Red,distance=..6] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute at @a[tag=Thorflyattack,scores={ThorFallingAttack=1..},team=Red] run execute at @e[team=Blue,distance=..6] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}


scoreboard players set @a[tag=Thor] ThorFallingAttackCooldown 300
scoreboard players set @a[tag=Thor] Zimen 0
scoreboard players set @a[tag=Thor] ThorFallingAttack 0
tag @a[tag=Thorflyattack] remove Thorflyattack
