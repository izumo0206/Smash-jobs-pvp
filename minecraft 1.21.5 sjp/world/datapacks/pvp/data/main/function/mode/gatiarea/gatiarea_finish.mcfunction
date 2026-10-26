#ガチエリア 勝利判定

#終了呼び出し
function main:finish/finish

#タイトル表示
#青チームの勝ち
execute if score ガチエリアボスバー GatiAreaBlueMaxPlus >= ガチエリア時間看板用 GatiAreaModeJudge run title @a title {"text":"青チームの勝ち!","color":"blue"}

#赤チームの勝ち
execute if score ガチエリアボスバー GatiAreaRedMaxPlus >= ガチエリア時間看板用 GatiAreaModeJudge run title @a title {"text":"赤チームの勝ち!","color":"red"}

#ガチエリア初期化
scoreboard players set ガチエリア GatiAreaModeJudge 2

function main:mode/gatiarea/gatiarea_mode_change_main

scoreboard players set ガチエリア GatiAreaModeJudge 3

function main:mode/gatiarea/gatiarea_mode_change_main


#時間終了
execute as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~3 air
#チケット演算終了
execute as @e[tag=CentralControlSystem] at @s run setblock ~1 ~ ~3 air