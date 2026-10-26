scoreboard players set @p[tag=Assist2,tag=Superjumpred1,distance=..2] AssistMP 300
scoreboard players set @p[tag=Assist,tag=Superjumpred1,distance=..2] AssistMP 100
scoreboard players set @p[tag=Superjumpred1] AssistCooldown 0
scoreboard players set @p[tag=Superjumpred1] BeasttamerCooldown 0
scoreboard players set @p[tag=Superjumpred1] WizardMP 100
scoreboard players set @p[tag=Superjumpred1] WizardCooldown 0

effect give @p[tag=Superjumpred1] minecraft:instant_health 1 40

tp @p[tag=Superjumpred1] 4930 3 87

tag @a remove Superjumpred1

kill @e[tag=Superjumpred1]