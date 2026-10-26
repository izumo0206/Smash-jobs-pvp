#雷神招来

execute as @a[tag=Thor,scores={ThorCooldown=..0,ThorMP=160..}] run tag @s add ThorNeo

#スキル演出
particle minecraft:flash ~ ~ ~ 2 2 2 100 100 force @a[tag=ThorNeo]
playsound minecraft:entity.lightning_bort.thunder master @a[tag=ThorNeo] ~ ~ ~ 10

#ジャンプ力強化
effect give @a[tag=ThorNeo] minecraft:jump_boost 20 10 true
effect give @a[tag=ThorNeo] minecraft:speed 20 2 true
effect give @a[tag=ThorNeo] minecraft:instant_health 1 1

#仕上げ
scoreboard players set @a[tag=ThorNeo] ThorMP 0
scoreboard players set @a[tag=ThorNeo] ThorCooldown 400