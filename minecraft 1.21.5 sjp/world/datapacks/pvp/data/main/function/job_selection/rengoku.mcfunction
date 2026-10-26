#煉獄さん

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Rengoku

#持ち物
clear @p

give @p netherite_sword{display:{Name:'{"text":"炎の呼吸 玖の型 煉獄","color":"dark_red","bold":true}'},Unbreakable:1b,HideFlags:4} 1
