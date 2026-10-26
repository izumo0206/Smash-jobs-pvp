#タグ付け

#人参

execute as @s[scores={EscaperPoint=5..}] run give @s minecraft:carrot[custom_name='ふかうら雪人参',lore=['東の雪国の人参'],unbreakable={},tooltip_display={hidden_components:['minecraft:unbreakable']}] 2

scoreboard players remove @s EscaperPoint 5
