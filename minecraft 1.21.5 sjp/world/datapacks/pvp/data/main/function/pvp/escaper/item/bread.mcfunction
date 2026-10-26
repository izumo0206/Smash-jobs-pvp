#パン

execute as @s[scores={EscaperPoint=20..}] run give @s minecraft:bread[custom_name='携行パン',lore=['腹が減ったらなんとやら'],unbreakable={},tooltip_display={hidden_components:['minecraft:unbreakable']}] 16

scoreboard players remove @s EscaperPoint 20
