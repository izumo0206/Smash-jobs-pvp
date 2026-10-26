#WizardFire1実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=20..,WizardMP=20..,SelectJum=1}] run tag @s add WizardFire1


#火の魔法実行
execute at @a[tag=WizardFire1] run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.2 100 normal
execute at @a[tag=WizardFire1] run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 0.2 0.1 1

execute at @a[tag=WizardFire1] run summon fireball ^ ^1 ^2.5 {Tags:["MTentity"],ExplosionPower:2b}
execute at @a[tag=WizardFire1] run summon fireball ^2 ^1 ^2.5 {Tags:["MTentity"],ExplosionPower:2b}
execute at @a[tag=WizardFire1] run summon fireball ^-2 ^1 ^2.5 {Tags:["MTentity"],ExplosionPower:2b}

schedule function main:pvp/wizard/wizard_armorstand_clear 200


#仕上げ
scoreboard players remove @a[tag=WizardFire1] WizardMP 20
scoreboard players set @a[tag=WizardFire1] WizardCooldown 20
scoreboard players set @a[tag=WizardFire1] sneak 0
tag @a[tag=WizardFire1] remove WizardFire1
