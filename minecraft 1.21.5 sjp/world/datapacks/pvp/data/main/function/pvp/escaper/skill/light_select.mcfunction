#光の杖選択
execute as @s[scores={EscaperPoint=70..}] run scoreboard players set @s SelectJum 2

execute as @s[scores={EscaperPoint=70..}] run give @s minecraft:blaze_rod[custom_name='回復の杖',lore=['MPを回復させる']] 1

scoreboard players remove @s EscaperPoint 70
