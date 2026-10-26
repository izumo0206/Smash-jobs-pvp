#確認待ち・カウントダウンを終了し、参加者の固定を解除
data remove storage main:stage_start active
data remove storage main:stage_start authorized
scoreboard players set #state StageStartCtrl 0
scoreboard players set #timer StageStartCtrl 0
scoreboard players set #redReady StageStartCtrl 0
scoreboard players set #blueReady StageStartCtrl 0
scoreboard players set #participants StageStartCtrl 0
scoreboard players set #soloDebug StageStartCtrl 0
title @a[tag=StageStartParticipant] clear
scoreboard players reset @a[tag=StageStartParticipant] StageReady
tag @a remove StageStartParticipant
