#すでに持っている場合は予備マガジン+1
execute if score @s GuHasAk matches 1 run return run function main:pvp/guerrilla/drop/mag_ak
scoreboard players set @s GuHasAk 1
execute store result score @s GuAmmoAk run data get storage main:guerrilla param.ak.mag
scoreboard players set @s GuMagAk 1
function main:pvp/guerrilla/item/give_ak
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1.2
tellraw @s {text:"AK47を手に入れた",color:"gold"}
