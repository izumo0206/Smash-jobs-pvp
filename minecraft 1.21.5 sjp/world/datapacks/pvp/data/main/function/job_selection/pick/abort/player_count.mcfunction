# 通常ピック中に参加者が不足した場合は安全に中止する
tellraw @a[tag=PickViewer] {"text":"参加人数が不足したため、ピックフェーズを中止しました。","color":"red"}
execute as @a[tag=PickParticipant] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
function main:job_selection/pick/reset
