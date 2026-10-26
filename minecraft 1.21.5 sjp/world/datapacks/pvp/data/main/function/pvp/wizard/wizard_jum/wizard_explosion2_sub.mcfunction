#WizardExplosion2実行



#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=60..,WizardMP=140..,SelectJum=14}] run tag @s add WizardExplosion2

#爆発の魔法効果
execute as @a[tag=WizardExplosion2] run effect give @s minecraft:resistance 1 255 true
execute at @a[tag=WizardExplosion2] run summon minecraft:creeper ~ ~1.5 ~ {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:5b,Silent:true,Invulnerable:true,CustomName:{text:"爆発の魔法Ⅱ",color:"gold"}}
execute at @a[team=Blue,tag=WizardExplosion2] run scoreboard players add @e[team=Red,distance=..7,limit=1] explosion_curse 3
execute at @a[team=Red,tag=WizardExplosion2] run scoreboard players add @e[team=Blue,distance=..7,limit=1] explosion_curse 3
execute as @a[tag=WizardExplosion2,team=Red] at @s if entity @e[team=Blue,distance=..7,limit=1] run tellraw @s ["",{"selector":"@e[team=Blue,distance=..7,limit=1]"},"の",{"text":"爆発の呪い","color":"yellow"},"のスタックは",{"score":{"objective":"explosion_curse","name":"@e[team=Blue,distance=..7,limit=1]"}}]
execute as @a[tag=WizardExplosion2,team=Blue] at @s if entity @e[team=Red,distance=..7,limit=1] run tellraw @s ["",{"selector":"@e[team=Red,distance=..7,limit=1]"},"の",{"text":"爆発の呪い","color":"yellow"},"のスタックは",{"score":{"objective":"explosion_curse","name":"@e[team=Red,distance=..7,limit=1]"}}]

#仕上げ
scoreboard players remove @a[tag=WizardExplosion2] WizardMP 140
scoreboard players set @a[tag=WizardExplosion2] WizardCooldown 100
scoreboard players set @a[tag=WizardExplosion2] sneak 0
function main:pvp/wizard/wizard_jum/wizard_explosion_curse
tag @a[tag=WizardExplosion2] remove WizardExplosion2
