#WizardExplosion1実行



#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=5..,WizardMP=40..,SelectJum=4}] run tag @s add WizardExplosion1

#爆発の魔法効果

execute as @a[tag=WizardExplosion1] run effect give @s minecraft:resistance 1 255 true
execute at @a[tag=WizardExplosion1] run summon creeper ~ ~ ~ {Tags:["MTentity"],Fuse:0,ExplosionRadius:2b,ignited:1,CustomName:{text:"爆発の魔法Ⅰ",color:"gold"},Invulnerable:1b,Silent:1b}
execute at @a[team=Blue,tag=WizardExplosion1] run scoreboard players add @e[team=Red,distance=..3,limit=1] explosion_curse 1
execute at @a[team=Red,tag=WizardExplosion1] run scoreboard players add @e[team=Blue,distance=..3,limit=1] explosion_curse 1
execute as @a[tag=WizardExplosion1,team=Red] at @s if entity @e[team=Blue,distance=..3,limit=1] run tellraw @s ["",{"selector":"@e[team=Blue,distance=..3,limit=1]"},"の",{"text":"爆発の呪い","color":"yellow"},"のスタックは",{"score":{"objective":"explosion_curse","name":"@e[team=Blue,distance=..3,limit=1]"}}]
execute as @a[tag=WizardExplosion1,team=Blue] at @s if entity @e[team=Red,distance=..3,limit=1] run tellraw @s ["",{"selector":"@e[team=Red,distance=..3,limit=1]"},"の",{"text":"爆発の呪い","color":"yellow"},"のスタックは",{"score":{"objective":"explosion_curse","name":"@e[team=Red,distance=..3,limit=1]"}}]
#仕上げ
scoreboard players remove @a[tag=WizardExplosion1] WizardMP 40
scoreboard players set @a[tag=WizardExplosion1] WizardCooldown 20
scoreboard players set @a[tag=WizardExplosion1] sneak 0
function main:pvp/wizard/wizard_jum/wizard_explosion_curse
tag @a[tag=WizardExplosion1] remove WizardExplosion1
