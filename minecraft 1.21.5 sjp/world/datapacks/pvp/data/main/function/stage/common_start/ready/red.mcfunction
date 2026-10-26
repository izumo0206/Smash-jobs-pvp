scoreboard players set #redReady StageStartCtrl 1
execute if score #soloDebug StageStartCtrl matches 1 run scoreboard players set #blueReady StageStartCtrl 1
tellraw @a[tag=StageStartParticipant] [{"selector":"@s","color":"red"},{"text":" が赤チームの準備を確認しました。","color":"yellow"}]
execute if score #soloDebug StageStartCtrl matches 1 run tellraw @a[tag=StageStartParticipant] [{"text":"[一人用デバッグ] 青チームの確認を省略しました。","color":"aqua"}]
tellraw @a[tag=StageStartParticipant,team=Red] [{"text":"[準備を取り消す]","color":"red","click_event":{"action":"run_command","command":"/trigger StageReady set 2"}}]
execute as @a[tag=StageStartParticipant] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score #redReady StageStartCtrl matches 1 if score #blueReady StageStartCtrl matches 1 run function main:stage/common_start/countdown/begin
