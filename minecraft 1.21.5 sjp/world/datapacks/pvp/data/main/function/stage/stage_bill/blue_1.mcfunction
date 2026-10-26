tp @a[tag=Blue1] -9981 3 10000

scoreboard players set @a[tag=Blue1,tag=Assist2] AssistMP 300
scoreboard players set @a[tag=Blue1,tag=Assist] AssistMP 100
scoreboard players set @a[tag=Blue1] AssistCooldown 0
scoreboard players set @a[tag=Blue1] BeasttamerMP 200
scoreboard players set @a[tag=Blue1] BeasttamerCooldown 0
scoreboard players set @a[tag=Blue1] WizardMP 100
scoreboard players set @a[tag=Blue1] WizardCooldown 0

effect give @a[tag=Blue1] minecraft:resistance 4 5
effect give @a[tag=Blue1] minecraft:instant_health 4 5

tag @a[tag=Blue1] remove Blue1