data modify storage main:ruciano hit.amount set from storage main:ruciano hit.hs_amount
execute as @a[tag=RcShooter] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.7 1.5
particle minecraft:crit ~ ~ ~ 0.15 0.15 0.15 0.3 8 force @a
