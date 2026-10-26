#通常罠実行

#タグ付け
execute as @a[tag=Trapper,scores={sneak=100..}] run tag @s add NormalTrap



execute at @a[tag=NormalTrap] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5 2 1



#通常罠実行
execute at @a[tag=NormalTrap,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=NormalTrap,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute at @a[team=Blue,tag=NormalTrap] unless entity @e[distance=..6,tag=trap] run summon creeper ~ ~ ~ {Team:"Blue",Health:30f,ExplosionRadius:4b,Fuse:10,Tags:["normaltrap","trap","MTentity"],CustomName:{"text":"罠"},attributes:[{id:"minecraft:knockback_resistance",base:10},{id:"minecraft:movement_speed",base:-200}]}

execute at @a[team=Red,tag=NormalTrap] unless entity @e[distance=..6,tag=trap] run summon creeper ~ ~ ~ {Team:"Red",Health:30f,ExplosionRadius:4b,Fuse:10,Tags:["normaltrap","trap","MTentity"],CustomName:{"text":"罠"},attributes:[{id:"minecraft:knockback_resistance",base:10},{id:"minecraft:movement_speed",base:-200}]}


#仕上げ
scoreboard players set @a[tag=NormalTrap] sneak 0
tag @a[tag=NormalTrap] remove NormalTrap
