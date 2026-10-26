#すでに持っている場合は予備マガジン+1
execute if score @s GuHasGl matches 1 run return run function main:pvp/guerrilla/drop/mag_gl
scoreboard players set @s GuHasGl 1
execute store result score @s GuAmmoGl run data get storage main:guerrilla param.gl.mag
scoreboard players set @s GuMagGl 1
function main:pvp/guerrilla/item/give_gl
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1.2
tellraw @s {text:"Garillを手に入れた",color:"gold"}
