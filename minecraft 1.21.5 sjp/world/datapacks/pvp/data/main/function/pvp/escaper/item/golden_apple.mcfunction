#タグ付け

#人参

execute as @s[scores={EscaperPoint=40..}] run give @s minecraft:enchanted_golden_apple[custom_name='魔女の果実',lore=['溢れる魔力を制御できなければ..'],unbreakable={},tooltip_display={hidden_components:['minecraft:unbreakable']}] 1

scoreboard players remove @s EscaperPoint 35
