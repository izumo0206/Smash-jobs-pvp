#毒の矢

execute as @s[scores={EscaperPoint=10..}] run give @s minecraft:tipped_arrow[potion_contents={potion:'minecraft:long_poison'}] 4

scoreboard players remove @s EscaperPoint 10
