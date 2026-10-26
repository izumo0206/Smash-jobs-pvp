#ステージ3～7 共通開始待機の初期化
execute unless data storage main:stage_start {configured:1b} run function main:stage/common_start/setup
function main:stage/common_start/reset

#旧ステージ3開始ボタンから予約されたカウントダウンが残っている場合は解除
schedule clear main:stage/schedule/5_seconds_full
schedule clear main:stage/schedule/4_seconds_full
schedule clear main:stage/schedule/3_seconds_full
schedule clear main:stage/schedule/2_seconds_full
schedule clear main:stage/schedule/1_seconds_full
schedule clear main:stage/schedule/0_seconds_full

tag @a[team=Red] add StageStartParticipant
tag @a[team=Blue] add StageStartParticipant
gamemode spectator @a[tag=StageStartParticipant]

scoreboard players set #state StageStartCtrl 1
scoreboard players set #redReady StageStartCtrl 0
scoreboard players set #blueReady StageStartCtrl 0
scoreboard players reset @a[tag=StageStartParticipant] StageReady
data modify storage main:stage_start active set value 1b
function main:stage/common_start/debug/refresh

execute if data storage main:stage_start {pick_debug:1b} run tellraw @a[tag=StageStartParticipant] [{"text":"[デバッグ] ステージ開始準備を省略し、5秒カウントダウンを開始します。","color":"aqua"}]
execute if data storage main:stage_start {pick_debug:1b} run function main:stage/common_start/countdown/begin
execute if data storage main:stage_start {pick_debug:1b} run return 0

tellraw @a[tag=StageStartParticipant] [{"text":"スペクテイターモードでステージを確認できます。両チームの準備確認後、開始地点へ戻って5秒のカウントダウンを開始します。","color":"yellow"}]
execute if score #soloDebug StageStartCtrl matches 1 run tellraw @a[tag=StageStartParticipant] [{"text":"[一人用デバッグ] 自分の準備確認だけでカウントダウンを開始できます。","color":"aqua"}]
function main:stage/common_start/prompt/red
function main:stage/common_start/prompt/blue
