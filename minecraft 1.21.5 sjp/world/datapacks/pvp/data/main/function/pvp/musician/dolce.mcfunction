#ドルチェ

#タグ付け
execute as @a[tag=Musician] run tag @s add Dolce
execute as @a[tag=Musician] run tag @s remove Vivace
execute as @a[tag=Musician] run tag @s remove Grandioso

#CDセット
scoreboard players add @a[tag=Musician] musicianCD 100
scoreboard players set @a[tag=Musician] Vivace 0
scoreboard players set @a[tag=Musician] Dolce 0
scoreboard players set @a[tag=Musician] Grandioso 0