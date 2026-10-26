#狼召喚実行

#タグ付け
execute as @a[tag=Beasttamer,scores={BeasttamerCooldown=..0,sneak=100..,BeasttamerMP=0..},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"狼の杖"}}}] run tag @s add BeasttamerWolf



execute at @a[tag=BeasttamerWolf] run playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 0.5 2 1



#狼の杖実行
execute at @a[tag=BeasttamerWolf,team=Blue] at @e[team=Blue,distance=..4] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=BeasttamerWolf,team=Red] at @e[team=Red,distance=..4] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

execute at @a[team=Blue,tag=BeasttamerWolf] at @e[team=Blue,tag=BeasttamerWolf] unless entity @e[type=wolf,tag=MTentity] run summon wolf ~ ~ ~ {Team:"Blue",Health:200f,Sitting:1b,CollarColor:11b,Tags:["Wolf","MTentity"],CustomName:"狼",attributes:[{id:"minecraft:max_health",base:200},{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:10},{id:"minecraft:movement_speed",base:2},{id:"minecraft:scale",base:2}]}

execute at @a[team=Red,tag=BeasttamerWolf] at @e[team=Red,tag=BeasttamerWolf] unless entity @e[type=wolf,tag=MTentity] run summon wolf ~ ~ ~ {Team:"Red",Health:200f,Sitting:1b,CollarColor:14b,Tags:["Wolf","MTentity"],CustomName:"狼",attributes:[{id:"minecraft:max_health",base:200},{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:10},{id:"minecraft:movement_speed",base:2},{id:"minecraft:scale",base:2}]}



#仕上げ
scoreboard players set @a[tag=BeasttamerWolf] BeasttamerCooldown 0
scoreboard players set @a[tag=BeasttamerWolf] sneak 0
tag @a[tag=BeasttamerWolf] remove BeasttamerWolf
