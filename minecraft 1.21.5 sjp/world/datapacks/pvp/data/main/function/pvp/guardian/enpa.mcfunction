execute as @a[tag=Guardian,scores={sneak=10..}] run tag @s add GuardianTP



execute at @a[tag=GuardianTP] run playsound minecraft:entity.guardian.ambient master @s ~ ~ ~ 0.5 2 1



#テレポート実行

execute as @a[tag=GuardianTP] run tp @p[tag=Guardian] @e[tag=BackEnderPearl,limit=1]



#仕上げ
scoreboard players set @a[tag=GuardianTP] sneak 0
tag @a[tag=GuardianTP] remove GuardianTP