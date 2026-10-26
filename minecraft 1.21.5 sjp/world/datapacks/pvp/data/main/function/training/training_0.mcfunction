#0秒前


execute at @e[tag=sikeisyuu0] run fill ~-1 ~2.5 ~ ~1 ~6.5 ~ minecraft:air


#不正防止
kill @e[tag=AlreadyDead]


execute unless entity @e[type=minecraft:zombie,tag=AlreadyDead,x=-1074,y=2,z=-1012,dx=-16,dy=1,dz=8] run execute as @e[tag=sikeisyuu0000,limit=1,sort=random] at @s run summon minecraft:zombie ~ ~1.5 ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:0.5f,Attributes:[{Name:generic.max_health,Base:0.5}],Rotation:[180f,0.0f],Tags:["AlreadyDead"],Team:Red}

scoreboard players set 開始判断 MinigameTime 1