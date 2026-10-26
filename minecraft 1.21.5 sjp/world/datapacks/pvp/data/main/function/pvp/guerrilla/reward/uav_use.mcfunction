item replace entity @s weapon.mainhand with minecraft:air
function main:pvp/guerrilla/reward/uav_glow with storage main:guerrilla param.uav
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5
tellraw @a [{selector:"@s"},{text:"がUAVを起動した",color:"yellow"}]
