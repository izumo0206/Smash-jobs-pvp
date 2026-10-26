#ステージ3～7 共通開始処理で使用するscoreboardを作成
scoreboard objectives add StageStartCtrl dummy
scoreboard objectives add StageReady trigger

scoreboard players set #state StageStartCtrl 0
scoreboard players set #timer StageStartCtrl 0
scoreboard players set #redReady StageStartCtrl 0
scoreboard players set #blueReady StageStartCtrl 0
scoreboard players set #participants StageStartCtrl 0
scoreboard players set #soloDebug StageStartCtrl 0

data modify storage main:stage_start configured set value 1b
data remove storage main:stage_start active
data remove storage main:stage_start authorized
data remove storage main:stage_start running
