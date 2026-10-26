#Garill リロード開始（予備マガジンを1つ使う）
execute if score @s GuReload matches 1.. run return 0
execute unless score @s GuMagGl matches 1.. run return run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.5 2
scoreboard players set @s GuReloadW 3
execute store result score @s GuReload run data get storage main:guerrilla param.gl.reload
scoreboard players operation @s GuReloadMax = @s GuReload
playsound minecraft:item.crossbow.loading_start player @a ~ ~ ~ 0.8 1.2
