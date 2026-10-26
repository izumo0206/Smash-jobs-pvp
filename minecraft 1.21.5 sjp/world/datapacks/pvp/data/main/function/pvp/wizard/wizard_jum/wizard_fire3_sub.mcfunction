#WizardFire3実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=200..,WizardMP=300..,SelectJum=21}] run tag @s add WizardFire3


#火の魔法実行
execute at @a[tag=WizardFire3] run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.2 1000 normal
execute at @a[tag=WizardFire3] run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 0.1 1

execute at @a[tag=WizardFire3] run effect give @s minecraft:resistance 7 20

execute at @a[tag=WizardFire3] run summon fireball ^ ^1 ^2.5 {Tags:["MTentity"],ExplosionPower:10b}


#仕上げ
scoreboard players remove @a[tag=WizardFire3] WizardMP 300
scoreboard players set @a[tag=WizardFire3] WizardCooldown 300
scoreboard players set @a[tag=WizardFire3] sneak 0
tag @a[tag=WizardFire3] remove WizardFire3
