# 青チーム降参: 勝敗・レート・戦績を通常のチケット終了経路で処理

tellraw @a {"text":"青チームが降参しました","color":"blue"}

# ガチエリア優先設定でも、降参側の敗北として戦績を記録する
scoreboard players operation #SurrenderMode Mode = 勝利判断モード Mode
scoreboard players set 勝利判断モード Mode 0
scoreboard players set 青チーム ticket 0
execute if score 赤チーム ticket matches ..0 run scoreboard players set 赤チーム ticket 1

function main:pvp/ticket/ticket_finish

scoreboard players operation 勝利判断モード Mode = #SurrenderMode Mode
scoreboard players reset #SurrenderMode Mode
