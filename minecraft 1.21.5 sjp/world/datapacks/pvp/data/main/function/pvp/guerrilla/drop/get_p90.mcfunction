#すでに持っている場合は予備マガジン+1
execute if score @s GuHasP90 matches 1 run return run function main:pvp/guerrilla/drop/mag_p90
scoreboard players set @s GuHasP90 1
execute store result score @s GuAmmoP90 run data get storage main:guerrilla param.p90.mag
scoreboard players set @s GuMagP90 1
function main:pvp/guerrilla/item/give_p90
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1.2
tellraw @s {text:"SMG（P90）を手に入れた",color:"gold"}
