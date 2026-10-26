#パンチ弓

execute as @s[scores={EscaperPoint=50..}] run give @s minecraft:bow[custom_name='パンチ弓',unbreakable={},enchantments={punch:2},tooltip_display={hidden_components:['minecraft:unbreakable']}] 1

scoreboard players remove @s EscaperPoint 50
