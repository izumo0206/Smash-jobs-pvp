scoreboard players set #blueReady StageStartCtrl 0
tellraw @a[tag=StageStartParticipant] [{"selector":"@s","color":"blue"},{"text":" が青チームの準備確認を取り消しました。","color":"gray"}]
function main:stage/common_start/prompt/blue
