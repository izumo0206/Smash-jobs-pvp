#WizardFlame3実行

#タグ付け
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=300..,WizardMP=300..,SelectJum=22}] run tag @s add WizardFlame3


#炎の魔法
execute at @a[tag=WizardFlame3] run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 500 force
execute at @a[tag=WizardFlame3] run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 0.1 1

execute at @a[tag=WizardFlame3] run effect give @s minecraft:instant_health 1 20
execute at @a[tag=WizardFlame3] run effect give @s minecraft:fire_resistance 60 20 true

execute if entity @a[team=Blue,tag=WizardFlame3] run effect give @e[team=Red] minecraft:nausea 8 10
execute if entity @a[team=Red,tag=WizardFlame3] run effect give @e[team=Blue] minecraft:nausea 8 10

execute if entity @a[team=Blue,tag=WizardFlame3] run effect give @e[team=Red] minecraft:hunger 8 100
execute if entity @a[team=Red,tag=WizardFlame3] run effect give @e[team=Blue] minecraft:hunger 8 100

execute as @a[team=Blue,tag=WizardFlame3] as @e[team=Red] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire keep
execute as @a[team=Red,tag=WizardFlame3] as @e[team=Blue] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire keep

#仕上げ
scoreboard players remove @a[tag=WizardFlame3] WizardMP 300
scoreboard players set @a[tag=WizardFlame3] WizardCooldown 500
scoreboard players set @a[tag=WizardFlame3] sneak 0
tag @a[tag=WizardFlame3] remove WizardFlame3