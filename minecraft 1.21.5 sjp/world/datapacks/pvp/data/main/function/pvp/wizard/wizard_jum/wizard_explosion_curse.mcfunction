#爆発の呪い実行
#タグ付け
execute as @e[scores={explosion_curse=5..}] run tag @s add ExplosionCurse

#効果
execute as @e[tag=ExplosionCurse] run playsound minecraft:entity.creeper.death master @s ~ ~ ~ 2 0.9 1
execute at @e[tag=ExplosionCurse] run particle minecraft:explosion

execute as @e[tag=ExplosionCurse] run damage @s 5 minecraft:explosion by @a[tag=WizardExplosion1,limit=1]

execute as @e[tag=ExplosionCurse] run damage @s 5 minecraft:explosion by @a[tag=WizardExplosion2,limit=1]

execute as @e[tag=ExplosionCurse] run effect give @s minecraft:slowness 10 3 true

scoreboard players set @a[tag=ExplosionCurse] explosion_curse 0

tag @a[tag=ExplosionCurse] remove ExplosionCurse