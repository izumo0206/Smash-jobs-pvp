#現在の開始参加者数から、一人用デバッグの適用状態を更新
scoreboard players set #participants StageStartCtrl 0
execute as @a[tag=StageStartParticipant] run scoreboard players add #participants StageStartCtrl 1

scoreboard players set #soloDebug StageStartCtrl 0
execute if data storage main:stage_start {solo_debug:1b} if score #participants StageStartCtrl matches 1 run scoreboard players set #soloDebug StageStartCtrl 1

#準備確認後にデバッグを有効化した場合も、その場で相手チーム確認を補完する
execute if score #soloDebug StageStartCtrl matches 1 if score #redReady StageStartCtrl matches 1 run scoreboard players set #blueReady StageStartCtrl 1
execute if score #soloDebug StageStartCtrl matches 1 if score #blueReady StageStartCtrl matches 1 run scoreboard players set #redReady StageStartCtrl 1
execute if score #state StageStartCtrl matches 1 if score #redReady StageStartCtrl matches 1 if score #blueReady StageStartCtrl matches 1 run function main:stage/common_start/countdown/begin
