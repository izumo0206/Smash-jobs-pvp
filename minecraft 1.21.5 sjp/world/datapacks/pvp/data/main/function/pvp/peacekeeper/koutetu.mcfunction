#"我が腕は鋼鉄"

#タグ付け
execute as @a[tag=Peacekeeper] run tag @s add Koutetu

execute at @a[tag=Koutetu] run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.7 1 1
execute at @a[tag=Koutetu] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 1 100 normal


#効果実行
execute as @a[tag=Koutetu] run effect give @s minecraft:resistance 8 1 true
execute as @a[tag=Koutetu] run effect give @s minecraft:strength 8 1 true

#スコアボードリセット
scoreboard players set @s peacekeeperCD 120
scoreboard players set @s damare 0
scoreboard players set @s Sippuu 0
scoreboard players set @s Ieyo 0
scoreboard players set @s Koutetu 0
scoreboard players set @s osameyo 0
scoreboard players set @s Sine 0
tag @a[tag=Koutetu] remove Koutetu