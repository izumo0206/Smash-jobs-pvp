function main:pvp/healsniper/rifle/zoom_off
tag @s remove HsReq
scoreboard players set @s HsReload 0
execute store result score @s HsAmmo run data get storage main:healsniper param.rifle.mag
