scoreboard players set @p[tag=Superjumpblue2,tag=Assist2,distance=..2] AssistMP 300
scoreboard players set @p[tag=Superjumpblue2,tag=Assist,distance=..2] AssistMP 100
scoreboard players set @p[tag=Superjumpblue2] AssistCooldown 0
scoreboard players set @p[tag=Superjumpblue2] BeasttamerCooldown 0
scoreboard players set @p[tag=Superjumpblue2] WizardMP 100
scoreboard players set @p[tag=Superjumpblue2] WizardCooldown 0

effect give @p[tag=Superjumpblue2] minecraft:instant_health 1 40

tp @p[tag=Superjumpblue2] 4938 1 136

tag @a remove Superjumpblue2

kill @e[tag=Superjumpblue2]