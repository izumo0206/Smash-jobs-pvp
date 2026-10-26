#偵察実行
execute as @a[tag=Scouter] run tag @s add Scouterlight2

execute at @a[tag=Scouterlight2] run playsound minecraft:entity.parrot.fly master @p ~ ~ ~ 1 1 1

execute at @a[team=Blue,tag=Scouterlight2] run effect give @a[team=Red,distance=..4] minecraft:glowing 4 1
execute at @a[team=Red,tag=Scouterlight2] run effect give @a[team=Blue,distance=..4] minecraft:glowing 4 1
execute at @a[team=Blue,tag=Scouterlight2] run effect give @a[team=Red,distance=..4] minecraft:slowness 4 2
execute at @a[team=Red,tag=Scouterlight2] run effect give @a[team=Blue,distance=..4] minecraft:slowness 4 2
execute at @a[team=Blue,tag=Scouterlight2] run effect give @a[team=Red,distance=..4] minecraft:blindness 4 1
execute at @a[team=Red,tag=Scouterlight2] run effect give @a[team=Blue,distance=..4] minecraft:blindness 4 1

scoreboard players set @a[tag=Scouterlight2] Jump 0
tag @a[tag=Scouterlight2] remove Scouterlight2