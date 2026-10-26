#すでに持っている場合は予備マガジン+1
execute if score @s GuHasTec matches 1 run return run function main:pvp/guerrilla/drop/mag_tec
scoreboard players set @s GuHasTec 3
execute store result score @s GuAmmoTec run data get storage main:guerrilla param.tec.mag
scoreboard players set @s GuMagTec 3
function main:pvp/guerrilla/item/give_tec
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1.2
tellraw @s {text:"オートピストル（Tec9）を手に入れた",color:"gold"}
