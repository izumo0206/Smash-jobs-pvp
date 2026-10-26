tp @a[tag=Blue3] -9989 21 10000

scoreboard players set @a[tag=Blue3,tag=Assist2] AssistMP 300
scoreboard players set @a[tag=Blue3,tag=Assist] AssistMP 100
scoreboard players set @a[tag=Blue3] AssistCooldown 0
scoreboard players set @a[tag=Blue3] BeasttamerMP 200
scoreboard players set @a[tag=Blue3] BeasttamerCooldown 0
scoreboard players set @a[tag=Blue3] WizardMP 100
scoreboard players set @a[tag=Blue3] WizardCooldown 0

effect clear @a[tag=Blue3] minecraft:resistance
effect give @a[tag=Blue3] minecraft:instant_health 4 5

tag @a[tag=Blue3] remove Blue3