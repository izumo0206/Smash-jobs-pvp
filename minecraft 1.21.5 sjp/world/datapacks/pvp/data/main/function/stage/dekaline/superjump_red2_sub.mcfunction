scoreboard players set @p[tag=Superjumpred2,tag=Assist2,distance=..2] AssistMP 300
scoreboard players set @p[tag=Superjumpred2,tag=Assist,distance=..2] AssistMP 100
scoreboard players set @p[tag=Superjumpred2] AssistCooldown 0
scoreboard players set @p[tag=Superjumpred2] BeasttamerCooldown 0
scoreboard players set @p[tag=Superjumpred2] WizardMP 100
scoreboard players set @p[tag=Superjumpred2] WizardCooldown 0

effect give @p[tag=Superjumpred2] minecraft:instant_health 1 40

tp @p[tag=Superjumpred2] 4964 1 59

tag @a remove Superjumpred2

kill @e[tag=Superjumpred2]