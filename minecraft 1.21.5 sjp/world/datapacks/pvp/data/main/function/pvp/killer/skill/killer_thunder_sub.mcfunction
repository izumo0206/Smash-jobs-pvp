#KillerThunder実行

#タグ付け
execute as @a[tag=Killer,scores={KillerCooldown=..0,sneak=15..}] run tag @s add KillerThunder1

#雷の魔法
execute at @a[tag=KillerThunder1] run particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 1 50 normal

execute at @a[team=Red,tag=KillerThunder1] run execute at @e[team=Blue,distance=..6,limit=1] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute at @a[team=Red,tag=KillerThunder1] run effect give @e[team=Blue,distance=..6] minecraft:glowing 4 1 true

execute at @a[team=Red,tag=KillerThunder1,scores={SelectStatus=1}] run execute at @e[team=Blue,distance=..6,limit=1] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute at @a[team=Red,tag=KillerThunder1,scores={SelectStatus=1}] run effect give @e[team=Blue,distance=..6] minecraft:glowing 6 1 true

#仕上げ
scoreboard players set @a[tag=KillerThunder1] KillerCooldown 40
scoreboard players set @a[tag=KillerThunder1,scores={SelectStatus=1}] KillerCooldown 20
scoreboard players set @a[tag=KillerThunder1] sneak 0
tag @a[tag=KillerThunder1] remove KillerThunder1
