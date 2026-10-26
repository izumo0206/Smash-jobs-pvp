#ノックバック2付きの棒

execute as @s[scores={EscaperPoint=40..}] run give @s minecraft:stick[unbreakable={},enchantments={knockback:2},tooltip_display={hidden_components:['minecraft:unbreakable']}] 1

scoreboard players remove @s EscaperPoint 40
