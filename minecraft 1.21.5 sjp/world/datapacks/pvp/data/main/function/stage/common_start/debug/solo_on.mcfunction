#一人用ステージ開始デバッグを有効化
data modify storage main:stage_start solo_debug set value 1b
execute if data storage main:stage_start {active:1b} run function main:stage/common_start/debug/refresh
tellraw @a [{"text":"[デバッグ] 一人用ステージ開始を有効にしました。参加者が一人の場合、自分の準備確認だけで開始します。","color":"aqua"}]
