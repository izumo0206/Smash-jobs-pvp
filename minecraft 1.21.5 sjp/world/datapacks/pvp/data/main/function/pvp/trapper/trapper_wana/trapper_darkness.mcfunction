#毒の罠実行

playsound minecraft:entity.wither.ambient master @p ~ ~ ~ 10

summon minecraft:splash_potion ~ ~ ~ {Tags:["MTentity"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:15,Amplifier:19,Duration:200},{Id:20,Amplifier:3,Duration:200}]}}}

effect give @p minecraft:wither 7 1
effect give @p minecraft:blindness 7 50

kill @e[tag=darknesstrap]
