#必殺剣

execute as @s[scores={EscaperPoint=40..}] run give @s minecraft:netherite_sword[custom_name='必殺剣',lore=['相手を殺す。'],damage=2030,enchantments={sharpness:255}] 1

scoreboard players remove @s EscaperPoint 40


