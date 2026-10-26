#毒の罠実行

playsound minecraft:entity.witch.celebrate master @p ~ ~ ~ 10

summon minecraft:splash_potion ~ ~ ~ {Tags:["MTentity"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:3053824,CustomPotionEffects:[{Id:2,Amplifier:2,Duration:200},{Id:19,Amplifier:1,Duration:200}]}}}

effect give @p minecraft:poison 7 1
effect give @p minecraft:slowness 7 2

kill @e[tag=poisontrap]
