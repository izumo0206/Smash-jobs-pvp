#剣士


#タグ消し
execute as @e[tag=KensiNoMa] at @s run tag @p remove Assist
execute as @e[tag=KensiNoMa] at @s run tag @p remove Wizard
execute as @e[tag=KensiNoMa] at @s run tag @p remove Scouter
execute as @e[tag=KensiNoMa] at @s run tag @p remove Bow
execute as @e[tag=KensiNoMa] at @s run tag @p remove Pirate
execute as @e[tag=KensiNoMa] at @s run tag @p remove Beasttamer
execute as @e[tag=KensiNoMa] at @s run tag @p remove Isaac
execute as @e[tag=KensiNoMa] at @s run tag @p remove Kirito
execute as @e[tag=KensiNoMa] at @s run tag @p remove Herobrine
execute as @e[tag=KensiNoMa] at @s run tag @p remove Ashe
execute as @e[tag=KensiNoMa] at @s run tag @p remove Bomber
execute as @e[tag=KensiNoMa] at @s run tag @p remove Hunter
execute as @e[tag=KensiNoMa] at @s run tag @p remove Guardian
execute as @e[tag=KensiNoMa] at @s run tag @p remove SwordMaster



#タグ付け
execute as @e[tag=KensiNoMa] at @s run tag @p add Sword

#持ち物
execute as @e[tag=KensiNoMa] at @s run clear @p
execute as @e[tag=KensiNoMa] at @s run give @p minecraft:iron_sword{display:{Name:'{"text":"剣士の剣"}',Lore:['{"text":"っょぃ"}','{"text":"攻撃力16"}']},Unbreakable:1,HideFlags:7,Enchantments:[{id:sharpness,lvl:18}]}
execute as @e[tag=KensiNoMa] at @s run give @p minecraft:shield{display:{Name:'{"text":"盾"}',Lore:['{"text":"っょぃ"}']},HideFlags:7,Unbreakable:true}
execute as @e[tag=KensiNoMa] at @s run give @p minecraft:snowball 64
execute as @e[tag=KensiNoMa] at @s run give @p minecraft:golden_apple 10
execute as @e[tag=KensiNoMa] at @s run give @p minecraft:bread 64
execute as @e[tag=KensiNoMa] at @s run give @p minecraft:iron_chestplate{display:{Name:"\"騎士の鎧\""},Unbreakable:1,HideFlags:4}
execute as @e[tag=KensiNoMa] at @s run give @p minecraft:iron_boots{display:{Name:"\"騎士の鎧\""},Unbreakable:1,HideFlags:4}
execute as @e[tag=KensiNoMa] at @s run give @p minecraft:iron_leggings{display:{Name:"\"騎士の鎧\""},Unbreakable:1,HideFlags:4}



execute as @e[tag=KensiNoMa] at @s run scoreboard players set @p shield 0