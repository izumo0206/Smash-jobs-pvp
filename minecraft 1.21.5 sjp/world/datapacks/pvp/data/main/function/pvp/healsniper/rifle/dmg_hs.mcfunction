#ヘッドショット：鈍足と演出（ダメージは hit_enemy で与える）
$effect give @s minecraft:slowness $(hs_slow_sec) $(hs_slow_lv)
execute as @a[tag=HsShooter] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.6 1.5
#火花は撃たれた本人には見せない
tag @s add SdVictim
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.2 6 force @a[tag=!SdVictim]
tag @s remove SdVictim
execute as @a[tag=HsShooter,limit=1] at @s run function main:pvp/silent_damage/hitmarker_hs
