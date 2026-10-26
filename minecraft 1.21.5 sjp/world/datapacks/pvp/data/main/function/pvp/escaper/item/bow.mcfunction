#タグ付け

#弓兵アイテム

execute as @s[scores={EscaperPoint=30..}] run give @s minecraft:bow[custom_name='弓兵の弓',lore=['弱者の数少ない抗いの一手'],unbreakable={},enchantments={punch:1},tooltip_display={hidden_components:['minecraft:unbreakable','minecraft:enchantments']}] 1

scoreboard players remove @s EscaperPoint 30
