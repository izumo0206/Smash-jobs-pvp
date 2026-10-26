#ビーストテイマーMP

#タグ付け
execute as @a[tag=Beasttamer,scores={sneak=1..,walk=0,dash=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{display:{Name:'{"text":"獣の杖"}',Lore:['{"text":"MPを回復させる"}']}}}}] run tag @s add BeasttamerMP

execute at @a[tag=BeasttamerMP] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.6 0.5 1 1 normal

scoreboard players add @a[tag=BeasttamerMP] BeasttamerMP 1
scoreboard players set @a[tag=BeasttamerMP] sneak 0

#タグ剥奪
tag @a[tag=BeasttamerMP] remove BeasttamerMP