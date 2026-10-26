#共通開始待機が有効な間だけ処理
execute unless data storage main:stage_start {active:1b} run return 0

#カウントダウン中だけ開始地点へ固定
execute if score #state StageStartCtrl matches 2 run function main:stage/common_start/lock

#このtick中に確認が揃った場合、次tickからカウントを減らす
execute if score #state StageStartCtrl matches 2 run function main:stage/common_start/countdown/tick
execute if score #state StageStartCtrl matches 1 run function main:stage/common_start/input/tick
