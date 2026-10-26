#タグ付け
execute as @a[tag=Singed] run tag @s add Singedpoison

#アマスタ召喚
execute at @a[team=Blue,tag=Singedpoison] run summon minecraft:armor_stand ~ ~ ~ {Tags:["PoisonSinged","BluePoisonSinged","MTentity"],Marker:true,Invisible:true,NoGravity:true}
execute at @a[team=Red,tag=Singedpoison] run summon minecraft:armor_stand ~ ~ ~ {Tags:["PoisonSinged","RedPoisonSinged","MTentity"],Marker:true,Invisible:true,NoGravity:true}

execute at @e[tag=PoisonSinged] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MTentity"],Duration:10,Radius:3f}

#仕上げ
scoreboard players set @a[tag=Singedpoison] walk 0
scoreboard players set @a[tag=Singedpoison] dash 0
tag @a[tag=Singedpoison] remove Singedpoison
