#WizardThunder実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=10..,WizardMP=30..,SelectJum=5}] run tag @s add WizardThunder1


#雷の魔法
execute at @a[tag=WizardThunder1] run particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 1 50 normal

execute as @a[tag=WizardThunder1] run damage @s 2 minecraft:lightning_bolt

execute at @a[team=Blue,tag=WizardThunder1] run execute at @e[team=Red,distance=..6,limit=1] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute at @a[team=Red,tag=WizardThunder1] run execute at @e[team=Blue,distance=..6,limit=1] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute at @a[team=Blue,tag=WizardThunder1] run effect give @e[team=Red,distance=..6] minecraft:glowing 2 1 true
execute at @a[team=Red,tag=WizardThunder1] run effect give @e[team=Blue,distance=..6] minecraft:glowing 2 1 true


#仕上げ
scoreboard players remove @a[tag=WizardThunder1] WizardMP 30
execute at @a[team=Red,tag=WizardThunder1] run execute unless entity @e[team=Blue,distance=..6] run scoreboard players add @a[tag=WizardThunder1] WizardMP 30
execute at @a[team=Blue,tag=WizardThunder1] run execute unless entity @e[team=Red,distance=..6] run scoreboard players add @a[tag=WizardThunder1] WizardMP 30
scoreboard players set @a[tag=WizardThunder1] WizardCooldown 40
scoreboard players set @a[tag=WizardThunder1] sneak 0
tag @a[tag=WizardThunder1] remove WizardThunder1
