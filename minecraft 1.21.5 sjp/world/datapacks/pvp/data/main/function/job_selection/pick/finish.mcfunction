tellraw @a[tag=PickViewer] {"text":"全プレイヤーのピックが完了しました。試合を開始します。","color":"green"}
playsound minecraft:ui.toast.challenge_complete master @a[tag=PickParticipant] ~ ~ ~ 1 1
data remove storage main:stage_start pick_debug
execute if score #debug PickCtrl matches 1 run data modify storage main:stage_start pick_debug set value 1b
function main:job_selection/pick/reset
function main:job_selection/senzyouhe
