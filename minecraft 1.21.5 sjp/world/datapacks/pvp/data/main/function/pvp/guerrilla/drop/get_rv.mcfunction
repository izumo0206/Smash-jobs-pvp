#すでに持っている場合は予備マガジン+1
execute if score @s GuHasRv matches 1 run return run function main:pvp/guerrilla/drop/mag_rv
scoreboard players set @s GuHasRv 1
execute store result score @s GuAmmoRv run data get storage main:guerrilla param.rv.mag
scoreboard players set @s GuMagRv 1
function main:pvp/guerrilla/item/give_rv
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1.2
tellraw @s {text:"リボルバーを手に入れた",color:"gold"}
