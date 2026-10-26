#一人用ステージ開始デバッグを無効化
data remove storage main:stage_start solo_debug
execute if data storage main:stage_start {active:1b} run function main:stage/common_start/debug/refresh
tellraw @a [{"text":"[デバッグ] 一人用ステージ開始を無効にしました。","color":"gray"}]
