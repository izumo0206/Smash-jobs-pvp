#スロット0（自身）のQ処理

#クールダウン中チェック
execute if score @s wraith_cd matches 1.. run title @s actionbar [{text:'クールダウン中: ',color:'red'},{score:{name:'@s',objective:'wraith_cd'},color:'yellow'},{text:' tick',color:'gray'}]
execute if score @s wraith_cd matches 1.. run return run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5

#1. 同じスロット再Qならキャンセルして即終了
execute if score @s wraith_ent matches 0 run return run function main:pvp/wraith/cancel

#2. 未選択（-1）なら自身を入口に決定して即終了
execute if score @s wraith_ent matches -1 run return run function main:pvp/wraith/select_ent0

#3. 他スロットが選択中（1..4）なら、出口として自身を指定して転移実行！
scoreboard players set @s wraith_exit 0
function main:pvp/wraith/execute_tp
