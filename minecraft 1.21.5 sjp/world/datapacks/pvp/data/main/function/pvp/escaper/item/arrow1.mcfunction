#鈍足矢

execute as @s[scores={EscaperPoint=10..}] run give @s minecraft:tipped_arrow[potion_contents={custom_color:10263708,custom_effects:[{id:'minecraft:slowness',amplifier:1,duration:120}]}] 4

scoreboard players remove @s EscaperPoint 10
