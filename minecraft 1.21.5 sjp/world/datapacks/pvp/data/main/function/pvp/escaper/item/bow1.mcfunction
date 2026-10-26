#パワー弓

execute as @s[scores={EscaperPoint=60..}] run give @s minecraft:bow[custom_name='パワー弓',unbreakable={},enchantments={power:2},tooltip_display={hidden_components:['minecraft:unbreakable']}] 1

scoreboard players remove @s EscaperPoint 60
