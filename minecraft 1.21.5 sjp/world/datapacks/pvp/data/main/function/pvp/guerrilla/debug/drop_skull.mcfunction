#デバッグ用：実行位置に頭蓋骨を1つ落とす
#使い方：/execute at @s positioned ^ ^ ^3 run function main:pvp/guerrilla/debug/drop_skull
summon marker ~ ~ ~ {Tags:["GuDbgPos"]}
execute as @e[type=marker,tag=GuDbgPos,limit=1] run function main:pvp/guerrilla/death/store_drop_pos
kill @e[type=marker,tag=GuDbgPos]
data modify storage main:guerrilla drop merge value {kind:"skull",item:"minecraft:skeleton_skull",name:"頭蓋骨"}
function main:pvp/guerrilla/death/spawn with storage main:guerrilla drop
