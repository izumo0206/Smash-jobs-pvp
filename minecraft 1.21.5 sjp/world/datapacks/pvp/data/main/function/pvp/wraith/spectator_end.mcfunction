#虚空終了
scoreboard players set @s wraith_spec_time 0
gamemode adventure @s
execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.5 0.8 0.5 0.05 30
title @s actionbar {text:'[ 虚空が終了しました ]',color:'gray'}
