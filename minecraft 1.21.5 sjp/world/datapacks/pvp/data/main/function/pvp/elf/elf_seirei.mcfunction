#木の精霊実行

#タグ付け
execute as @a[tag=Elf] run tag @s add Elfseirei


execute at @a[tag=Elfseirei] run playsound minecraft:entity.player.levelup master @p ~ ~ ~ 0.3 2
execute at @a[tag=Elfseirei] run particle minecraft:heart

#木の精霊実行
effect give @e[tag=Elfseirei] minecraft:regeneration 3 3 true

#仕上げ
scoreboard players set @e[tag=Elfseirei] seireicooldown 200
scoreboard players remove @e[tag=Elfseirei] ElfMP 50
tag @e[tag=Elfseirei] remove Elfseirei
