#"我が足は疾風"

#タグ付け
execute as @a[tag=Peacekeeper] run tag @s add Sippuu

execute at @a[tag=Sippuu] run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 0.7 1 1
execute at @a[tag=Sippuu] run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 100 normal


#効果実行
execute as @a[tag=Sippuu] run effect give @s minecraft:speed 6 1 true
execute as @a[tag=Sippuu] run effect give @s minecraft:jump_boost 6 0 true



#スコアボードリセット
scoreboard players set @s peacekeeperCD 60
scoreboard players set @s damare 0
scoreboard players set @s Sippuu 0
scoreboard players set @s Ieyo 0
scoreboard players set @s Koutetu 0
scoreboard players set @s osameyo 0
scoreboard players set @s Sine 0
tag @a[tag=Sippuu] remove Sippuu