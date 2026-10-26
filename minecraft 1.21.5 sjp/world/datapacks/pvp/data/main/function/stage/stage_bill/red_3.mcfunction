tp @a[tag=Red3] -10011 21 10000

scoreboard players set @a[tag=Red3,tag=Assist2] AssistMP 300
scoreboard players set @a[tag=Red3,tag=Assist] AssistMP 100
scoreboard players set @a[tag=Red3] AssistCooldown 0
scoreboard players set @a[tag=Red3] BeasttamerMP 200
scoreboard players set @a[tag=Red3] BeasttamerCooldown 0
scoreboard players set @a[tag=Red3] WizardMP 100
scoreboard players set @a[tag=Red3] WizardCooldown 0

effect clear @a[tag=Red3] minecraft:resistance
effect give @a[tag=Red3] minecraft:instant_health 4 5

tag @a[tag=Red3] remove Red3