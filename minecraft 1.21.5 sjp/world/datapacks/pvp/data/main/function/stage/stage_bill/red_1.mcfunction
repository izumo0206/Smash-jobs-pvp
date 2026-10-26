tp @a[tag=Red1] -10011 3 10000

scoreboard players set @a[tag=Red1,tag=Assist2] AssistMP 300
scoreboard players set @a[tag=Red1,tag=Assist] AssistMP 100
scoreboard players set @a[tag=Red1] AssistCooldown 0
scoreboard players set @a[tag=Red1] BeasttamerMP 200
scoreboard players set @a[tag=Red1] BeasttamerCooldown 0
scoreboard players set @a[tag=Red1] WizardMP 100
scoreboard players set @a[tag=Red1] WizardCooldown 0

effect give @a[tag=Red1] minecraft:resistance 4 5
effect give @a[tag=Red1] minecraft:instant_health 4 5

tag @a[tag=Red1] remove Red1