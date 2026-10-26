scoreboard players set @p[tag=Superjumpblue1,tag=Assist2,distance=..2] AssistMP 300
scoreboard players set @p[tag=Superjumpblue1,tag=Assist,distance=..2] AssistMP 100
scoreboard players set @p[tag=Superjumpblue1] AssistCooldown 0
scoreboard players set @p[tag=Superjumpblue1] BeasttamerCooldown 0
scoreboard players set @p[tag=Superjumpblue1] WizardMP 100
scoreboard players set @p[tag=Superjumpblue1] WizardCooldown 0

effect give @p[tag=Superjumpblue1] minecraft:instant_health 1 40

tp @p[tag=Superjumpblue1] 4972 3 108

tag @a remove Superjumpblue1

kill @e[tag=Superjumpblue1]