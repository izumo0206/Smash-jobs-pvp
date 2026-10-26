#グライアス召喚実行

#タグ付け
execute as @a[tag=Beasttamer,scores={BeasttamerCooldown=..0,sneak=100..,BeasttamerMP=0..},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"グライアスの杖"}}}] run tag @s add BeasttamerPhantom



execute at @a[tag=BeasttamerPhantom] run playsound minecraft:entity.phantom.ambient master @s ~ ~ ~ 0.5 2 1



#グライアスの杖実行
execute at @a[tag=BeasttamerPhantom,team=Blue] at @e[team=Blue,distance=..4] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=BeasttamerPhantom,team=Red] at @e[team=Red,distance=..4] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

tp @e[type=minecraft:ravager,tag=MTentity] @a[tag=Beasttamer,limit=1]

execute at @a[team=Blue,tag=BeasttamerPhantom] at @e[team=Blue,tag=BeasttamerPhantom] unless entity @e[type=ravager,tag=MTentity] run summon minecraft:ravager ~ ~ ~ {Team:"Blue",Health:200f,Tags:["Wolf","MTentity"],CustomName:"グライアス",equipment:{saddle:{id:"minecraft:saddle",count:1}},attributes:[{id:"minecraft:attack_damage",base:15},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:max_health",base:200},{id:"minecraft:scale",base:1.1}]}

execute at @a[team=Red,tag=BeasttamerPhantom] at @e[team=Red,tag=BeasttamerPhantom] unless entity @e[type=ravager,tag=MTentity] run summon minecraft:ravager ~ ~ ~ {Team:"Red",Health:200f,Tags:["Wolf","MTentity"],CustomName:"グライアス",equipment:{saddle:{id:"minecraft:saddle",count:1}},attributes:[{id:"minecraft:attack_damage",base:15},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:max_health",base:200},{id:"minecraft:scale",base:1.1}]}

#仕上げ
scoreboard players set @a[tag=BeasttamerPhantom] BeasttamerCooldown 0
scoreboard players set @a[tag=BeasttamerPhantom] sneak 0
tag @a[tag=BeasttamerPhantom] remove BeasttamerPhantom
