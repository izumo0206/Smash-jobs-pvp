#"剣を収めよ"

#タグ付け
execute as @a[tag=Peacekeeper] run tag @s add Osameyo

execute at @a[tag=Osameyo] run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 0.7 1 1
execute at @a[tag=Osameyo] run particle minecraft:crit ~ ~ ~ 1 1 1 1 100 normal


#効果実行
execute at @a[team=Blue,tag=Osameyo] run execute as @a[team=Red,distance=..6,nbt=!{Inventory:[{Slot:18b}]}] run item replace entity @s container.9 from entity @s weapon.mainhand
execute at @a[team=Red,tag=Osameyo] run execute as @a[team=Blue,distance=..6,nbt=!{Inventory:[{Slot:18b}]}] run item replace entity @s container.9 from entity @s weapon.mainhand
execute at @a[team=Blue,tag=Osameyo] run execute as @a[team=Red,distance=..6,nbt=!{Inventory:[{Slot:18b}]}] run item replace entity @s weapon.mainhand from entity @s enderchest.19
execute at @a[team=Red,tag=Osameyo] run execute as @a[team=Blue,distance=..6,nbt=!{Inventory:[{Slot:18b}]}] run item replace entity @s weapon.mainhand from entity @s enderchest.19




#スコアボードリセット
scoreboard players set @s peacekeeperCD 250
scoreboard players set @s damare 0
scoreboard players set @s Sippuu 0
scoreboard players set @s Ieyo 0
scoreboard players set @s Koutetu 0
scoreboard players set @s osameyo 0
scoreboard players set @s Sine 0
tag @a[tag=Osameyo] remove Osameyo