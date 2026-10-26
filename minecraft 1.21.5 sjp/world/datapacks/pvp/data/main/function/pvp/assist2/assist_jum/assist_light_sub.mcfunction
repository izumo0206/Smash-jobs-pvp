#AssistLight実行

#タグ付け
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=30..,AssistMP=100..,Kirikae=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run tag @s add AssistLight


#光の杖 効果
execute at @a[tag=AssistLight] run particle minecraft:firework ~ ~ ~ 1 1 1 1 400 normal
execute at @a[tag=AssistLight] run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 1 1

execute if entity @a[team=Blue,tag=AssistLight] at @e[team=Red] run particle minecraft:firework ~ ~ ~ 0.6 0.6 0.6 1 100 normal
execute if entity @a[team=Red,tag=AssistLight] at @e[team=Blue] run particle minecraft:firework ~ ~ ~ 0.6 0.6 0.6 1 100 normal

execute if entity @a[team=Blue,tag=AssistLight] run effect give @e[team=Red] minecraft:glowing 5 1
execute if entity @a[team=Red,tag=AssistLight] run effect give @e[team=Blue] minecraft:glowing 5 1

#仕上げ
scoreboard players remove @a[tag=AssistLight] AssistMP 100
scoreboard players set @a[tag=AssistLight] AssistCooldown 80
scoreboard players set @a[tag=AssistLight] sneak 0
tag @a[tag=AssistLight] remove AssistLight