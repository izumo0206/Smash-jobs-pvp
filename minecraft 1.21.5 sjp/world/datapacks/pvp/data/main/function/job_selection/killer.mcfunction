#キラー

#タグ消し
function main:job_selection/tag_reset2

#タグ付け
tag @p add Killer

#持ち物
clear @p
function main:mode/1vs4/give_killer_book
scoreboard players set @p KillerCooldown 0
