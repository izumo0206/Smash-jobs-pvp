#デバッグ用：実行位置にランダム武器を1つ落とす
#使い方：/execute at @s positioned ^ ^ ^3 run function main:pvp/guerrilla/debug/drop_random
summon marker ~ ~ ~ {Tags:["GuDbgPos"]}
execute as @e[type=marker,tag=GuDbgPos,limit=1] run function main:pvp/guerrilla/death/store_drop_pos
kill @e[type=marker,tag=GuDbgPos]
function main:pvp/guerrilla/death/drop_weapon
