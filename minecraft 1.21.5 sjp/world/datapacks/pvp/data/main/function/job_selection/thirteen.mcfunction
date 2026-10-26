#タグ消し
function main:job_selection/tag_reset2


#タグ付け
 tag @p add Thirteen

#持ち物
 clear @p
 give @p minecraft:bread 64



 scoreboard players set @p shield 0

 #選択制限

 execute at @e[tag=jobsentakuKun] run data merge block ~ ~1 ~ {Text1:'{"text":""}',Text2:'{"text":"\\u9078\\u629e\\u6e08\\u307f","color":"white"}'}