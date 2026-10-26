#EscaperLight実行

#タグ付け
execute as @a[tag=Escaper,scores={EscaperMP=300..,SelectJum=2}] run tag @s add EscaperLight


#光の杖 効果
execute at @a[tag=EscaperLight] run particle minecraft:firework ~ ~ ~ 1 1 1 1 400 normal
execute at @a[tag=EscaperLight] run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 1 1

execute if entity @a[team=Blue,tag=EscaperLight] at @e[team=Red] run particle minecraft:firework ~ ~ ~ 0.6 0.6 0.6 1 100 normal
execute if entity @a[team=Red,tag=EscaperLight] at @e[team=Blue] run particle minecraft:firework ~ ~ ~ 0.6 0.6 0.6 1 100 normal

execute if entity @a[team=Blue,tag=EscaperLight] run effect give @e[team=Red] minecraft:glowing 4 1

#仕上げ
scoreboard players set @a[tag=EscaperLight] EscaperMP 0
tag @a[tag=EscaperLight] remove EscaperLight
