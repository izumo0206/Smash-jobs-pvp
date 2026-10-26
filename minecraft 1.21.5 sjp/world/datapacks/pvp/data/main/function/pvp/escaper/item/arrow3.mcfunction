#クリスタルアロー

execute if entity @s[scores={EscaperPoint=10..}] run give @s minecraft:tipped_arrow[custom_name='クリスタルアロー',lore=['当たった敵は動けない'],potion_contents={custom_color:43775,custom_effects:[{id:'minecraft:slowness',amplifier:19,duration:140},{id:'minecraft:jump_boost',amplifier:39,duration:140}]},tooltip_display={hidden_components:['minecraft:potion_contents']}] 1

scoreboard players remove @s EscaperPoint 10
