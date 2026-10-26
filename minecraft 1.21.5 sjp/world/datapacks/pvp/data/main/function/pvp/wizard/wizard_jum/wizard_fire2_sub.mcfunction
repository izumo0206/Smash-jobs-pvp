#WizardFire2実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=100..,WizardMP=200..,SelectJum=11}] run tag @s add WizardFire2


#火の魔法実行
execute at @a[tag=WizardFire2] run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.2 500 normal
execute at @a[tag=WizardFire2] run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 0.5 0.1 1


execute at @a[tag=WizardFire2] run summon fireball ^ ^1 ^2.5 {Tags:["MTentity"],ExplosionPower:4b}


#仕上げ
scoreboard players remove @a[tag=WizardFire2] WizardMP 200
scoreboard players set @a[tag=WizardFire2] WizardCooldown 200
scoreboard players set @a[tag=WizardFire2] sneak 0
tag @a[tag=WizardFire2] remove WizardFire2
