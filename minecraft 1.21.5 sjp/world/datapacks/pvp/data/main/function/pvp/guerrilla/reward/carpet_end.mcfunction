scoreboard players operation #pid GuCalc = @s GuPid
execute as @e[type=ender_dragon,tag=GuDragon] if score @s GuPid = #pid GuCalc run function main:pvp/guerrilla/reward/remove_dragon
kill @s
