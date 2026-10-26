#風エレメント0～72をエンチャントレベル1～73へ変換して一時Armor Standへ持たせる
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["MKWindBurst","MKWindBurstNew"]}
attribute @e[type=minecraft:armor_stand,tag=MKWindBurstNew,sort=nearest,limit=1,distance=..1] minecraft:explosion_knockback_resistance base set 1
attribute @e[type=minecraft:armor_stand,tag=MKWindBurstNew,sort=nearest,limit=1,distance=..1] minecraft:knockback_resistance base set 1
scoreboard players operation @e[type=minecraft:armor_stand,tag=MKWindBurstNew,sort=nearest,limit=1,distance=..1] MKOwner = @s MKOwner
scoreboard players set @e[type=minecraft:armor_stand,tag=MKWindBurstNew,sort=nearest,limit=1,distance=..1] MKTimer 2
scoreboard players operation @s MKLevel = @s MKWind
scoreboard players add @s MKLevel 1
execute store result storage main:magicking wind_level int 1 run scoreboard players get @s MKLevel
function main:pvp/magicking/spell/wind/equip_burst with storage main:magicking
tag @e[type=minecraft:armor_stand,tag=MKWindBurstNew,sort=nearest,limit=1,distance=..1] remove MKWindBurstNew
