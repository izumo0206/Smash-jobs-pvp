#幽体離脱発動
scoreboard players set @s wraith_sword_ct 0
scoreboard players set @s wraith_spec_time 200
gamemode spectator @s
execute at @s run playsound minecraft:entity.warden.emerge master @s ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 1 1.5
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.8 1.0 0.8 0.1 100
execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.05 40
title @s actionbar {text:'【虚空】発動！ (10秒間)',color:'light_purple'}
