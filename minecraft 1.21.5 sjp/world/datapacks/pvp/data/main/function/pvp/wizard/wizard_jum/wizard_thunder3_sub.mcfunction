#WizardThunder3実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=300..,WizardMP=300..,SelectJum=25}] run tag @s add WizardThunder3


#雷の魔法
execute at @a run particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 1 50 normal

execute if entity @a[team=Blue,tag=WizardThunder3] run effect give @e[team=Red] minecraft:blindness 6 10
execute if entity @a[team=Red,tag=WizardThunder3] run effect give @e[team=Blue] minecraft:blindness 6 10

execute if entity @a[team=Blue,tag=WizardThunder3] run effect give @e[team=Red] minecraft:glowing 6 10
execute if entity @a[team=Red,tag=WizardThunder3] run effect give @e[team=Blue] minecraft:glowing 6 10

execute if entity @a[team=Blue,tag=WizardThunder3] run execute at @e[team=Red] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute if entity @a[team=Red,tag=WizardThunder3] run execute at @e[team=Blue] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}


#仕上げ
scoreboard players remove @a[tag=WizardThunder3] WizardMP 300
scoreboard players set @a[tag=WizardThunder3] WizardCooldown 300
scoreboard players set @a[tag=WizardThunder3] sneak 0
tag @a[tag=WizardThunder3] remove WizardThunder3
