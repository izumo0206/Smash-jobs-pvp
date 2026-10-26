#WizardIce1実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=20..,WizardMP=30..,SelectJum=3}] run tag @s add WizardIce1


#氷の魔法
execute at @a[tag=WizardIce1] run particle minecraft:end_rod ~ ~ ~ 1 1 1 1 100 normal

execute as @a[tag=WizardIce1] run effect give @s minecraft:resistance 4 1 true

execute as @a[team=Blue,tag=WizardIce1] at @e[team=Red,sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardIceArmorStand","MTentity"],Marker:true,Invisible:true,NoGravity:true}
execute as @a[team=Red,tag=WizardIce1] at @e[team=Blue,sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardIceArmorStand","MTentity"],Marker:true,Invisible:true,NoGravity:true}
execute as @a[team=Blue,tag=WizardIce1] at @e[team=Red,sort=nearest,limit=1] run effect give @s minecraft:slowness 1 9
execute as @a[team=Red,tag=WizardIce1] at @e[team=Blue,sort=nearest,limit=1] run effect give @s minecraft:slowness 1 9

#仕上げ
scoreboard players remove @a[tag=WizardIce1] WizardMP 30
scoreboard players set @a[tag=WizardIce1] WizardCooldown 40
scoreboard players set @a[tag=WizardIce1] sneak 0
tag @a[tag=WizardIce1] remove WizardIce1
