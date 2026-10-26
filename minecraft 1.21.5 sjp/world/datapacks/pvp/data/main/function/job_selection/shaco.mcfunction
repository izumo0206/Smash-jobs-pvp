#タグ無し
function main:job_selection/tag_reset2

#タグ付け
tag @p add Shaco

#持ち物
clear @p
give @p give @p minecraft:iron_sword{display:{Name:"\"ダガー\"",Lore:["\"彼の不気味な笑い声が聞こえたら…それは彼があなたを次のおもちゃとして選んだ証かもしれない。\""]},Unbreakable:1,HideFlags:7,Enchantments:[{id:sharpness,lvl:4}]}
give @p minecraft:bread 64



#選択制限

execute at @e[tag=jobsentakuKun] run data merge block ~-10 ~3 ~ {Text1:'{"text":""}',Text2:'{"text":"\\u9078\\u629e\\u6e08\\u307f","color":"white"}'}