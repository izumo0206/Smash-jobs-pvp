#"少し黙れ"

#タグ付け
execute as @a[tag=Peacekeeper] run tag @s add Damare

execute at @a[tag=Damare] run playsound minecraft:block.beacon.power_select master @a[distance=..6] ~ ~ ~ 5
execute at @a[tag=Damare] at @a[tag=!Damare,distance=..6] run particle minecraft:elder_guardian ~ ~ ~ 1 1 1 1 100 normal


#効果実行
execute at @a[team=Blue,tag=Damare] run execute at @e[team=Red,distance=..10] run scoreboard players set @p[team=Red] sneak 0
execute at @a[team=Red,tag=Damare] run execute at @e[team=Blue,distance=..10] run scoreboard players set @p[team=Blue] sneak 0

#スコアボードリセット
scoreboard players set @s peacekeeperCD 160
scoreboard players set @s damare 0
scoreboard players set @s Sippuu 0
scoreboard players set @s Ieyo 0
scoreboard players set @s Koutetu 0
scoreboard players set @s osameyo 0
scoreboard players set @s Sine 0
tag @a[tag=Damare] remove Damare