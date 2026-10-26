#"死ね"

#タグ付け
execute as @a[tag=Peacekeeper] run tag @s add Sine

execute at @a[tag=Sine] run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 1 1
execute at @a[tag=Sine] run particle minecraft:end_rod ~ ~ ~ 1 1 1 1 100 normal


#効果実行
execute at @a[team=Blue,tag=Sine] run kill @a[team=Red,distance=..10,scores={health=..14}]
execute at @a[team=Red,tag=Sine] run kill @a[team=Blue,distance=..10,scores={health=..14}]


#スコアボードリセット
scoreboard players set @s peacekeeperCD 300
execute as @a[team=Red,tag=Sine] run execute unless entity @a[team=Blue,distance=..10,scores={health=..14}] run scoreboard players set @s peacekeeperCD 150
execute as @a[team=Blue,tag=Sine] run execute unless entity @a[team=Red,distance=..10,scores={health=..14}] run scoreboard players set @s peacekeeperCD 150
scoreboard players set @s damare 0
scoreboard players set @s Sippuu 0
scoreboard players set @s Ieyo 0
scoreboard players set @s Koutetu 0
scoreboard players set @s osameyo 0
scoreboard players set @s Sine 0
tag @a[tag=Sine] remove Sine