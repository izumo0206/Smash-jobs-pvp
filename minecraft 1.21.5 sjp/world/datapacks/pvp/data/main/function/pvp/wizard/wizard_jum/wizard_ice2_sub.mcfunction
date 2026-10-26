#WizardIce2実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=50..,WizardMP=100..,SelectJum=13}] run tag @s add WizardIce2


#氷の魔法
execute at @a[tag=WizardIce2] run particle minecraft:end_rod ~ ~ ~ 1 1 1 1 500 normal

execute as @a[tag=WizardIce2] run effect give @s minecraft:resistance 7 1 true

execute as @a[team=Blue,tag=WizardIce2] at @e[team=Red,sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardIceArmorStand2","MTentity"],Marker:true,Invisible:true,NoGravity:true}
execute as @a[team=Red,tag=WizardIce2] at @e[team=Blue,sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardIceArmorStand2","MTentity"],Marker:true,Invisible:true,NoGravity:true}

#仕上げ
scoreboard players remove @a[tag=WizardIce2] WizardMP 100
scoreboard players set @a[tag=WizardIce2] WizardCooldown 100
scoreboard players set @a[tag=WizardIce2] sneak 0
tag @a[tag=WizardIce2] remove WizardIce2
