#ゲリラ兵自身の死亡：頭蓋骨と拾った武器・支給品は消滅、初期装備は残す
scoreboard players set @s GuSkull 0
scoreboard players set @s GuRw1 0
scoreboard players set @s GuRw3 0
scoreboard players set @s GuRw5 0
scoreboard players set @s GuRw10 0
scoreboard players set @s GuHasAk 0
scoreboard players set @s GuMagAk 0
scoreboard players set @s GuHasGl 0
scoreboard players set @s GuMagGl 0
scoreboard players set @s GuHasP90 0
scoreboard players set @s GuMagP90 0
scoreboard players set @s GuHasTec 0
scoreboard players set @s GuMagTec 0
scoreboard players set @s GuHasRv 0
scoreboard players set @s GuMagRv 0
clear @s *[minecraft:custom_data~{gu_loot:1b}]
scoreboard players set @s GuReload 0
scoreboard players set @s GuReloadW 0
execute store result score @s GuAmmoSg run data get storage main:guerrilla param.sg.mag
function main:pvp/guerrilla/item/ensure
scoreboard players set @s GuBombUse 0
tag @s remove GuScoping
