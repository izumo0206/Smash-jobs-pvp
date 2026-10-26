#アシストMP

#タグ付け
execute as @a[tag=Assist,scores={sneak=1..,walk=0,dash=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"魔力の杖"}}}] run tag @s add AssistMP

execute at @a[tag=AssistMP] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.6 0.5 1 1 normal

scoreboard players add @a[tag=AssistMP] AssistMP 1
scoreboard players set @a[tag=AssistMP] sneak 0

#タグ剥奪
tag @a[tag=AssistMP] remove AssistMP