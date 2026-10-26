#祭司のドロップ検知と即時手元復帰
scoreboard objectives add wraith_exit dummy

execute at @s as @e[type=item,distance=..3] if data entity @s {Item:{components:{"minecraft:custom_data":{wraith_slot:0}}}} run function main:pvp/wraith/q_slot0
execute at @s as @e[type=item,distance=..3] if data entity @s {Item:{components:{"minecraft:custom_data":{wraith_slot:1}}}} run function main:pvp/wraith/q_slot1
execute at @s as @e[type=item,distance=..3] if data entity @s {Item:{components:{"minecraft:custom_data":{wraith_slot:2}}}} run function main:pvp/wraith/q_slot2
execute at @s as @e[type=item,distance=..3] if data entity @s {Item:{components:{"minecraft:custom_data":{wraith_slot:3}}}} run function main:pvp/wraith/q_slot3
execute at @s as @e[type=item,distance=..3] if data entity @s {Item:{components:{"minecraft:custom_data":{wraith_slot:4}}}} run function main:pvp/wraith/q_slot4

scoreboard players set @s wraith_drop_s 0
scoreboard players set @s wraith_drop_f 0
