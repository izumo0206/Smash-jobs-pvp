scoreboard players set #redReady StageStartCtrl 0
tellraw @a[tag=StageStartParticipant] [{"selector":"@s","color":"red"},{"text":" が赤チームの準備確認を取り消しました。","color":"gray"}]
function main:stage/common_start/prompt/red
