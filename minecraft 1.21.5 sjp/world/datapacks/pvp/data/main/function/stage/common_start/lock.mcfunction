#senzyouheと同じ座標へ、相手チームの開始地点を向く状態で毎tick固定する
#青チーム
execute if score ステージ決め StageSetting matches 3 run tp @a[tag=StageStartParticipant,team=Blue] -4902 5 4963 108 0
execute if score ステージ決め StageSetting matches 4 run tp @a[tag=StageStartParticipant,team=Blue] -10047 7 5111 -166 0
execute if score ステージ決め StageSetting matches 5 run tp @a[tag=StageStartParticipant,team=Blue] -9971 4 10000 90 0
execute if score ステージ決め StageSetting matches 6 run tp @a[tag=StageStartParticipant,team=Blue] 4981 9 188 162 0
execute if score ステージ決め StageSetting matches 7 run tp @a[tag=StageStartParticipant,team=Blue] 10000 3 15038 180 0

#赤チーム
execute if score ステージ決め StageSetting matches 3 run tp @a[tag=StageStartParticipant,team=Red] -4994 5 4934 -72 0
execute if score ステージ決め StageSetting matches 4 run tp @a[tag=StageStartParticipant,team=Red] -10023 7 5015 14 0
execute if score ステージ決め StageSetting matches 5 run tp @a[tag=StageStartParticipant,team=Red] -10029 4 10000 -90 0
execute if score ステージ決め StageSetting matches 6 run tp @a[tag=StageStartParticipant,team=Red] 4921 9 7 -18 0
execute if score ステージ決め StageSetting matches 7 run tp @a[tag=StageStartParticipant,team=Red] 10000 3 14962 0 0
