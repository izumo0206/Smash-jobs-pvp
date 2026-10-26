#リロード中（実行者：ゲリラ兵）
scoreboard players remove @s GuReload 1
execute if score @s GuReload matches 1.. run return 0
execute if score @s GuReloadW matches 1 store result score @s GuAmmoSg run data get storage main:guerrilla param.sg.mag
execute if score @s GuReloadW matches 2 run function main:pvp/guerrilla/gun/reload/done_ak
execute if score @s GuReloadW matches 3 run function main:pvp/guerrilla/gun/reload/done_gl
execute if score @s GuReloadW matches 4 run function main:pvp/guerrilla/gun/reload/done_p90
execute if score @s GuReloadW matches 5 run function main:pvp/guerrilla/gun/reload/done_tec
execute if score @s GuReloadW matches 6 run function main:pvp/guerrilla/gun/reload/done_rv
scoreboard players set @s GuReloadW 0
playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 0.8 1.2
