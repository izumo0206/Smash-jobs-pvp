#アレイ見てると黄色パーティクル
execute at @e[tag=ChuraTask] run execute as @a[distance=..3,team=Blue] run execute if predicate main:looking_at run particle minecraft:dust{color:[1.0,1.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force

#アレイ見てないと赤パーティクル
execute at @e[tag=ChuraTask1] run execute as @a[distance=..3,team=Blue] run execute if entity @e[type=minecraft:allay,distance=..5] unless predicate main:looking_at run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask1] run execute if entity @e[type=minecraft:allay,distance=..5] unless entity @a[distance=..3] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask2] run execute as @a[distance=..3,team=Blue] run execute if entity @e[type=minecraft:allay,distance=..5] unless predicate main:looking_at run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask2] run execute if entity @e[type=minecraft:allay,distance=..5] unless entity @a[distance=..3] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask3] run execute as @a[distance=..3,team=Blue] run execute if entity @e[type=minecraft:allay,distance=..5] unless predicate main:looking_at run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask3] run execute if entity @e[type=minecraft:allay,distance=..5] unless entity @a[distance=..3] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask4] run execute as @a[distance=..3,team=Blue] run execute if entity @e[type=minecraft:allay,distance=..5] unless predicate main:looking_at run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask4] run execute if entity @e[type=minecraft:allay,distance=..5] unless entity @a[distance=..3] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask5] run execute as @a[distance=..3,team=Blue] run execute if entity @e[type=minecraft:allay,distance=..5] unless predicate main:looking_at run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask5] run execute if entity @e[type=minecraft:allay,distance=..5] unless entity @a[distance=..3] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask6] run execute as @a[distance=..3,team=Blue] run execute if entity @e[type=minecraft:allay,distance=..5] unless predicate main:looking_at run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask6] run execute if entity @e[type=minecraft:allay,distance=..5] unless entity @a[distance=..3] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask7] run execute as @a[distance=..3,team=Blue] run execute if entity @e[type=minecraft:allay,distance=..5] unless predicate main:looking_at run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask7] run execute if entity @e[type=minecraft:allay,distance=..5] unless entity @a[distance=..3] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force

#タスク完了で青
execute at @e[tag=ChuraTask1] unless entity @e[type=minecraft:allay,distance=..5] run particle minecraft:dust{color:[0.0,0.4,1.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask2] unless entity @e[type=minecraft:allay,distance=..5] run particle minecraft:dust{color:[0.0,0.4,1.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask3] unless entity @e[type=minecraft:allay,distance=..5] run particle minecraft:dust{color:[0.0,0.4,1.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask4] unless entity @e[type=minecraft:allay,distance=..5] run particle minecraft:dust{color:[0.0,0.4,1.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask5] unless entity @e[type=minecraft:allay,distance=..5] run particle minecraft:dust{color:[0.0,0.4,1.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask6] unless entity @e[type=minecraft:allay,distance=..5] run particle minecraft:dust{color:[0.0,0.4,1.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
execute at @e[tag=ChuraTask7] unless entity @e[type=minecraft:allay,distance=..5] run particle minecraft:dust{color:[0.0,0.4,1.0],scale:2.0} ~ ~2 ~ 0 20 0 0 10 force
