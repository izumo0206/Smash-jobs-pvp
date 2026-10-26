#WizardIce3実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=100..,WizardMP=300..,SelectJum=23}] run tag @s add WizardIce3


#氷の魔法
execute at @a[tag=WizardIce3] run particle minecraft:end_rod ~ ~ ~ 1 1 1 1 1000 normal

execute at @a[tag=WizardIce3] run playsound minecraft:blizzard master @p ~ ~ ~ 5
execute at @a[tag=WizardIce3,team=Blue] run playsound minecraft:blizzard master @a[team=Red] ~ ~ ~ 5
execute at @a[tag=WizardIce3,team=Red] run playsound minecraft:blizzard master @a[team=Blue] ~ ~ ~ 5


execute if entity @a[team=Blue,tag=WizardIce3] run effect give @e[team=Red] minecraft:mining_fatigue 4 4
execute if entity @a[team=Red,tag=WizardIce3] run effect give @e[team=Blue] minecraft:mining_fatigue 4 4
execute if entity @a[team=Blue,tag=WizardIce3] run effect give @e[team=Red] minecraft:slowness 4 50
execute if entity @a[team=Red,tag=WizardIce3] run effect give @e[team=Blue] minecraft:slowness 4 50

execute as @a[team=Blue,tag=WizardIce3] at @e[team=Red] run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardIceArmorStand2","MTentity"],Marker:true,Invisible:true,NoGravity:true}
execute as @a[team=Red,tag=WizardIce3] at @e[team=Blue] run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardIceArmorStand2","MTentity"],Marker:true,Invisible:true,NoGravity:true}

#仕上げ
scoreboard players remove @a[tag=WizardIce3] WizardMP 300
scoreboard players set @a[tag=WizardIce3] WizardCooldown 300
scoreboard players set @a[tag=WizardIce3] sneak 0
tag @a[tag=WizardIce3] remove WizardIce3
