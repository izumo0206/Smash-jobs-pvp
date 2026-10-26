#WizardExplosion3実行



#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=200..,WizardMP=300..,SelectJum=24}] run tag @s add WizardExplosion3


#仕上げ
scoreboard players remove @a[tag=WizardExplosion3] WizardMP 300
scoreboard players set @a[tag=WizardExplosion3] WizardCooldown 400
scoreboard players set @a[tag=WizardExplosion3] sneak 0