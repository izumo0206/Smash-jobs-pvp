#剣士


#タグ消し
function main:job_selection/tag_reset2



#タグ付け
execute as @e[tag=So-domasuta-NoMa] at @s run tag @p add SwordMaster

#持ち物
execute as @e[tag=So-domasuta-NoMa] at @s run clear @p
execute as @e[tag=So-domasuta-NoMa] at @s run give @p minecraft:iron_sword{display:{Name:'{"text":"達人の剣"}',Lore:['{"text":"剣技の極限に達した者のみが秘められた力を扱える剣"}',]},Unbreakable:1,HideFlags:7,Enchantments:[{id:sharpness,lvl:14}]}
execute as @e[tag=So-domasuta-NoMa] at @s run give @p minecraft:bread 64



execute as @e[tag=So-domasuta-NoMa] at @s run scoreboard players set @p shield 0