#光の矢


#効果
execute as @e[type=minecraft:spectral_arrow,nbt={life:40s}] at @s run summon creeper ~ ~ ~ {Tags:["MTentity"],Fuse:0,ExplosionRadius:2b,ignited:1,CustomName:{text:"爆弾矢",color:"gold"},Invulnerable:1b,Silent:1b}
kill @e[type=minecraft:spectral_arrow,nbt={life:40s}]

#パーティクル
execute as @e[type=minecraft:spectral_arrow,nbt={life:1s}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 0 0.5 0 1 force
execute as @e[type=minecraft:spectral_arrow,nbt={life:10s}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 0 0.5 0 3 force
execute as @e[type=minecraft:spectral_arrow,nbt={life:20s}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 0 0.5 0 7 force
