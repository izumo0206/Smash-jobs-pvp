#"傷よ癒えよ"

#タグ付け
execute as @a[tag=Peacekeeper] run tag @s add Ieyo

execute at @a[tag=Ieyo] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 2 1
execute at @a[tag=Ieyo] run particle minecraft:heart ~ ~ ~ 1 1 1 1 20 normal


#効果実行
execute at @a[team=Blue,tag=Ieyo] run effect give @a[tag=!Ieyo,team=Blue,distance=..6] minecraft:instant_health 1 3 true
execute at @a[team=Red,tag=Ieyo] run effect give @a[tag=!Ieyo,team=Red,distance=..6] minecraft:instant_health 1 3 true
execute at @a[team=Blue,tag=Ieyo] run effect give @a[tag=Ieyo,team=Blue,distance=..6] minecraft:instant_health 1 0 true
execute at @a[team=Red,tag=Ieyo] run effect give @a[tag=Ieyo,team=Red,distance=..6] minecraft:instant_health 1 0 true

#スコアボードリセット
scoreboard players set @s peacekeeperCD 150
scoreboard players set @s damare 0
scoreboard players set @s Sippuu 0
scoreboard players set @s Ieyo 0
scoreboard players set @s Koutetu 0
scoreboard players set @s osameyo 0
scoreboard players set @s Sine 0
tag @a[tag=Ieyo] remove Ieyo