#両チームの確認完了後、5秒カウントダウンを開始
scoreboard players set #state StageStartCtrl 2
scoreboard players set #timer StageStartCtrl 100
scoreboard players reset @a[tag=StageStartParticipant] StageReady

#ステージ確認中の位置にかかわらず、カウントダウン開始時に開始地点へ戻す
function main:stage/common_start/lock

title @a[tag=StageStartParticipant] subtitle {"text":"試合開始まで","color":"yellow"}
title @a[tag=StageStartParticipant] title {"text":"5","color":"gold"}
execute as @a[tag=StageStartParticipant] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
