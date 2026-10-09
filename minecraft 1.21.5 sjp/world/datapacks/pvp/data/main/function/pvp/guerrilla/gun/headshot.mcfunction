data modify storage main:guerrilla hit.amount set from storage main:guerrilla shot.hs
execute as @a[tag=GuShooter] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.6 1.5
#火花は撃たれた本人には見せない
tag @s add SdVictim
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.2 6 force @a[tag=!SdVictim]
tag @s remove SdVictim
execute as @a[tag=GuShooter,limit=1] at @s run function main:pvp/silent_damage/hitmarker_hs
