#トラッパー選択
execute as @s[scores={EscaperPoint=50..}] run scoreboard players set @s SelectJum 1

execute as @s[scores={EscaperPoint=50..}] run give @s minecraft:shears[custom_name='闇の罠',lore=['暗黒が貴様を包む']] 1

scoreboard players remove @s EscaperPoint 50
