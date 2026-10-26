#WizardThunder2実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=200..,WizardMP=150..,SelectJum=15}] run tag @s add WizardThunder2


#雷の魔法
execute at @a[tag=WizardThunder2] run particle minecraft:flash ~ ~ ~ 1.5 0.5 1.5 1 100 normal

execute as @a[tag=WizardThunder2] run damage @s 6 minecraft:lightning_bolt

execute if entity @a[team=Blue,tag=WizardThunder2] run execute at @e[team=Red] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute if entity @a[team=Red,tag=WizardThunder2] run execute at @e[team=Blue] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}

#仕上げ
scoreboard players remove @a[tag=WizardThunder2] WizardMP 150
scoreboard players set @a[tag=WizardThunder2] WizardCooldown 150
scoreboard players set @a[tag=WizardThunder2] sneak 0
tag @a[tag=WizardThunder2] remove WizardThunder2
