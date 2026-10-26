#一時attributeを元に戻す
execute unless data storage main:magicking {devour_setup:1b} run function main:pvp/magicking/setup_devour
execute if score @s MKGravityOld matches 1.. run function main:pvp/magicking/util/restore_gravity
execute if score @s MKScaleOld matches 1.. run function main:pvp/magicking/util/restore_scale
attribute @s minecraft:explosion_knockback_resistance modifier remove main:magic_king_wind_self

scoreboard players set @s MKFire 0
scoreboard players set @s MKWater 0
scoreboard players set @s MKWind 0
scoreboard players set @s MKEarth 0
scoreboard players set @s MKLight 0
scoreboard players set @s MKDark 0
scoreboard players set @s MKCost 0
scoreboard players set @s MKCast 0
scoreboard players set @s MKCD 0
scoreboard players set @s MKRange 0
scoreboard players set @s MKDuration 0
scoreboard players set @s MKPower 0
scoreboard players set @s MKLevel 0
scoreboard players set @s MKCount 0
scoreboard players set @s MKPrev 0
scoreboard players set @s MKTimer 0
scoreboard players set @s MKRandom 0
scoreboard players set @s MKFlameN 0
scoreboard players set @s MKThunderN 0
scoreboard players set @s MKIceN 0
scoreboard players set @s MKChaosN 0
scoreboard players set @s MKUltimate 0
scoreboard players set @s MKDevourUse 0
scoreboard players set @s MKGravityTime 0
scoreboard players set @s MKScaleTime 0
