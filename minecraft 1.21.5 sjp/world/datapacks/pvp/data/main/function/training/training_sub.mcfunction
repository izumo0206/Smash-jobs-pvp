#スコア上げて再召喚

scoreboard players add @a[tag=MiniGamePlayer] MinigameScore 1

execute unless entity @e[type=minecraft:zombie,tag=AlreadyDead,x=-4998,y=3,z=-4995,dx=20,dy=2,dz=14] run execute as @e[tag=sikeisyuu0000,limit=1,sort=random] at @s run summon minecraft:zombie ~ ~1.5 ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:0.5f,Attributes:[{Name:generic.max_health,Base:0.5}],Rotation:[180f,0.0f],Tags:["AlreadyDead"],Team:Red}