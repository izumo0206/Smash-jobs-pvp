#WizardFlame2実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=200..,WizardMP=100..,SelectJum=12}] run tag @s add WizardFlame2


#炎の魔法
execute at @a[tag=WizardFlame2] run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 500 force
execute at @a[tag=WizardFlame2] run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 0.5 0.1 1

execute at @a[tag=WizardFlame2] run effect give @a[tag=WizardFlame2] minecraft:fire_resistance 30 1 true
execute at @a[tag=WizardFlame2] run effect give @a[tag=WizardFlame2] minecraft:absorption 30 1 true

execute as @a[team=Blue,tag=WizardFlame2] as @e[team=Red,sort=nearest,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardFlameArmorStand2","MTentity"],Marker:true,Invisible:true,NoGravity:true}

execute as @a[team=Red,tag=WizardFlame2] as @e[team=Blue,sort=nearest,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["WizardFlameArmorStand2","MTentity"],Marker:true,Invisible:true,NoGravity:true}


#仕上げ
scoreboard players remove @a[tag=WizardFlame2] WizardMP 100
scoreboard players set @a[tag=WizardFlame2] WizardCooldown 300
scoreboard players set @a[tag=WizardFlame2] sneak 0
tag @a[tag=WizardFlame2] remove WizardFlame2
