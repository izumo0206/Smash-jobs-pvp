execute as @a[tag=Bomber,scores={BomberMP=800..}] run tag @s add Bakugeki

#爆発
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^ {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^2 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^4 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^6 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^8 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^10 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^12 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^14 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^16 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^18 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
execute at @a[tag=Bakugeki] run summon minecraft:creeper ^ ^0.5 ^20 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:"爆裂ビーム"}
#パーティクル
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^ 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^2 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^4 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^6 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^8 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^10 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^12 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^14 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^16 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^18 1 0 0 0.1 30 normal
execute at @a[tag=Bakugeki] run particle minecraft:flame ^ ^0.5 ^20 1 0 0 0.1 30 normal

scoreboard players set @e[tag=Bakugeki] BomberMP 0
tag @e[tag=Bakugeki] remove Bakugeki
