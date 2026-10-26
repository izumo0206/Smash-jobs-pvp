#WizardKill 実行



#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=800..,WizardMP=400..,SelectJum=26}] run tag @s add WizardKill

#即死の魔法効果
execute at @a[tag=WizardKill] run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 0.7 1 1

execute if entity @a[team=Blue,tag=WizardKill] run kill @e[team=Red] 
execute if entity @a[team=Red,tag=WizardKill] run kill @e[team=Blue]

#仕上げ
scoreboard players remove @a[tag=WizardKill] WizardMP 400
scoreboard players set @a[tag=WizardKill] WizardCooldown 200
scoreboard players set @a[tag=WizardKill] sneak 0
tag @a[tag=WizardKill] remove WizardKill