# 降参ボタン入口
# コマンドブロックから実行し、最も近いプレイヤーを押下者として扱う
execute as @p[distance=..4] at @s run function main:stage/surrender/request_player
