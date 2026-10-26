#ショットガン リロード開始（予備弾無制限）
execute if score @s GuReload matches 1.. run return 0
scoreboard players set @s GuReloadW 1
execute store result score @s GuReload run data get storage main:guerrilla param.sg.reload
scoreboard players operation @s GuReloadMax = @s GuReload
playsound minecraft:item.crossbow.loading_start player @a ~ ~ ~ 0.8 1.2
