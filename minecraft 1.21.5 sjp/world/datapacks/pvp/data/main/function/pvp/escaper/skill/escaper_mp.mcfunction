#アシストMP

#タグ付け
execute as @a[tag=Escaper,scores={sneak=1..}] if items entity @s weapon.mainhand minecraft:blaze_rod[custom_name='回復の杖'] run tag @s add EscaperMP

scoreboard players add @a[tag=EscaperMP] EscaperMP 1

#タグ剥奪
tag @a[tag=EscaperMP] remove EscaperMP
