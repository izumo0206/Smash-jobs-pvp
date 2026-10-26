#実行者：投擲物。追跡用markerを乗せ、投げた人のIDとチームを写す
scoreboard players set #id GuCalc 0
scoreboard players set #team GuCalc 0
execute on origin run function main:pvp/guerrilla/projectile/copy_owner
ride @e[type=marker,tag=GuNew,limit=1] mount @s
scoreboard players operation @e[type=marker,tag=GuNew] GuID = #id GuCalc
execute if score #team GuCalc matches 1 run tag @e[type=marker,tag=GuNew] add GuBlue
execute if score #team GuCalc matches 2 run tag @e[type=marker,tag=GuNew] add GuRed
tag @e[type=marker,tag=GuNew] remove GuNew
