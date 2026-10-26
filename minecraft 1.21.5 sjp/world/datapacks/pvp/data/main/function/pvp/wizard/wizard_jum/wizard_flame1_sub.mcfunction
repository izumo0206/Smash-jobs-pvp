#WizardFlame1実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=20..,WizardMP=30..,SelectJum=2}] run tag @s add WizardFlame1


#炎の魔法
execute at @a[tag=WizardFlame1] run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 100 force
execute at @a[tag=WizardFlame1] run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 0.2 0.1 1

execute at @a[tag=WizardFlame1] run effect give @a[tag=WizardFlame1] minecraft:fire_resistance 30 1 true
execute at @a[tag=WizardFlame1] run effect give @a[tag=WizardFlame1] minecraft:instant_health 1 1 true

execute as @a[team=Blue,tag=WizardFlame1] as @e[team=Red,sort=nearest,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardFlameArmorStand","MTentity"],Marker:true,Invisible:true,NoGravity:true}

execute as @a[team=Red,tag=WizardFlame1] as @e[team=Blue,sort=nearest,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardFlameArmorStand","MTentity"],Marker:true,Invisible:true,NoGravity:true}

#仕上げ
scoreboard players remove @a[tag=WizardFlame1] WizardMP 30
scoreboard players set @a[tag=WizardFlame1] WizardCooldown 30
scoreboard players set @a[tag=WizardFlame1] sneak 0
tag @a[tag=WizardFlame1] remove WizardFlame1
