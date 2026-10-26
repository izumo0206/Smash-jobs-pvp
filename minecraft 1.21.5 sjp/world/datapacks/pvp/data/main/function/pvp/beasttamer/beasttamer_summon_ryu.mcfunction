#リュー召喚実行

#タグ付け
execute as @a[tag=Beasttamer,scores={BeasttamerCooldown=..0,sneak=100..,BeasttamerMP=0..},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"リューの杖"}}}] run tag @s add BeasttamerHorse



execute at @a[tag=BeasttamerHorse] run playsound minecraft:entity.horse.ambient master @s ~ ~ ~ 0.5 2 1



#リューの杖実行
execute at @a[tag=BeasttamerHorse,team=Blue] at @e[team=Blue,distance=..4] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=BeasttamerHorse,team=Red] at @e[team=Red,distance=..4] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute as @a[team=Blue,tag=BeasttamerHorse] run kill @e[tag=Ryu]

execute as @a[team=Red,tag=BeasttamerHorse] run kill @e[tag=Ryu]

execute at @a[team=Blue,tag=BeasttamerHorse] at @e[team=Blue,tag=BeasttamerHorse] unless entity @e[type=horse,tag=MTentity] run summon minecraft:horse ~ ~ ~ {Team:"Blue",Health:100f,Tame:1b,Variant:1027,Tags:["Ryu","MTentity"],CustomName:"リュー",equipment:{saddle:{id:"minecraft:saddle",count:1}},attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:scale",base:0.9}]}

execute at @a[team=Red,tag=BeasttamerHorse] at @e[team=Red,tag=BeasttamerHorse] unless entity @e[type=horse,tag=MTentity] run summon minecraft:horse ~ ~ ~ {Team:"Red",Health:100f,Tame:1b,Variant:1027,Tags:["Ryu","MTentity"],CustomName:"リュー",equipment:{saddle:{id:"minecraft:saddle",count:1}},attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:scale",base:0.9}]}


#仕上げ
scoreboard players set @a[tag=BeasttamerHorse] BeasttamerCooldown 0
scoreboard players set @a[tag=BeasttamerHorse] sneak 0
tag @a[tag=BeasttamerHorse] remove BeasttamerHorse
