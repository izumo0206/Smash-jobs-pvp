#鈍足の罠実行

playsound minecraft:entity.allay.death master @p ~ ~ ~ 10

summon minecraft:splash_potion ~ ~ ~ {Tags:["MTentity"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:7039851,CustomPotionEffects:[{Id:2,Amplifier:199,Duration:200},{Id:24,Amplifier:1,Duration:200}]}}}

effect give @p minecraft:glowing 5 1
effect give @p minecraft:slowness 5 200
effect give @p minecraft:jump_boost 5 237

kill @e[tag=slowtrap]
