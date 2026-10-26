#逃亡者

#タグ消し
function main:job_selection/tag_reset2

#タグ付け
clear @p
tag @p add Escaper
function main:mode/1vs4/give_escaper_book

#ポイント0にリセット
scoreboard players set @a[tag=Escaper] EscaperPoint 0

#持ち物
scoreboard players set @p SelectJum 0
scoreboard players set @p EscaperCooldown 0
scoreboard players set @p EscaperMP 0
scoreboard players set @p shield 0
