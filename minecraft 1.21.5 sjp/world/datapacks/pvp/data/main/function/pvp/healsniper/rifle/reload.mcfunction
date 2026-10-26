#リロード開始（予備弾は無制限）
execute if score @s HsReload matches 1.. run return 0
execute store result score @s HsReload run data get storage main:healsniper param.rifle.reload
scoreboard players operation @s HsReloadMax = @s HsReload
playsound minecraft:item.crossbow.loading_start player @a ~ ~ ~ 0.8 0.9
