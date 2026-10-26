#選択時・リセット時の初期値（実行者：回復スナイパー）
scoreboard players set @s HsUse 0
scoreboard players set @s HsCool 0
execute store result score @s HsAmmo run data get storage main:healsniper param.rifle.mag
scoreboard players set @s HsReload 0
scoreboard players set @s HsDartCD 0
scoreboard players set @s HsNanoHave 0
scoreboard players set @s HsKill 0
scoreboard players set @s HsDeath 0
tag @s remove HsReq
