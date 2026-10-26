#ガチエリアを実際に動かす中枢部
#ガチエリアのボスバーを一番上に持ってくる
execute if score ガチエリアボスバーセット用 GatiAreaModeJudge matches 1.. run bossbar set minecraft:time players
execute if score ガチエリアボスバーセット用 GatiAreaModeJudge matches 1.. run bossbar add minecraft:gatiarea "kari"
execute if score ガチエリアボスバーセット用 GatiAreaModeJudge matches 1.. run bossbar set minecraft:gatiarea players @a
execute unless score 時間設定判定用 TimeValueSet matches 0 if score ガチエリアボスバーセット用 GatiAreaModeJudge matches 1.. run bossbar set minecraft:time players @a
execute if score ガチエリアボスバーセット用 GatiAreaModeJudge matches 1.. run scoreboard players set ガチエリアボスバーセット用 GatiAreaModeJudge 0

#モード0(設定してない)の場合
execute if score ガチエリア GatiAreaModeJudge matches 0 at @e[tag=karioki] run data merge block ~ ~2 ~ {Text1:'{"text":"\\u30ac\\u30c1\\u30a8\\u30ea\\u30a2\\u30e2\\u30fc\\u30c9\\u306f"}',Text2:'{"text":"\\u73fe\\u5728\\u7121\\u52b9\\u5316"}',Text3:'{"text":"\\u3055\\u308c\\u3066\\u3044\\u307e\\u3059"}'}
execute if score ガチエリア GatiAreaModeJudge matches 0 run bossbar remove minecraft:gatiarea

#モード1(A)の場合
execute if score ガチエリア GatiAreaModeJudge matches 1 run function main:mode/gatiarea/game_playing_a
execute if score ガチエリア GatiAreaModeJudge matches 1 at @e[tag=karioki] run data merge block ~ ~2 ~ {Text1:'{"text":"\\u30ac\\u30c1\\u30a8\\u30ea\\u30a2\\u30e2\\u30fc\\u30c9"}',Text2:'{"text":"\\u73fe\\u5728\\u30a8\\u30ea\\u30a2A\\u30e2\\u30fc\\u30c9"}',Text3:'{"text":"\\u8a2d\\u5b9a\\u4e2d"}'}

#モード2(B)の場合
execute if score ガチエリア GatiAreaModeJudge matches 2 run function main:mode/gatiarea/game_playing_b
execute if score ガチエリア GatiAreaModeJudge matches 2 at @e[tag=karioki] run data merge block ~ ~2 ~ {Text1:'{"text":"\\u30ac\\u30c1\\u30a8\\u30ea\\u30a2\\u30e2\\u30fc\\u30c9"}',Text2:'{"text":"\\u73fe\\u5728\\u30a8\\u30ea\\u30a2B\\u30e2\\u30fc\\u30c9"}',Text3:'{"text":"\\u8a2d\\u5b9a\\u4e2d"}'}

#モード3(C)の場合
execute if score ガチエリア GatiAreaModeJudge matches 3 run function main:mode/gatiarea/game_playing_c
execute if score ガチエリア GatiAreaModeJudge matches 3 at @e[tag=karioki] run data merge block ~ ~2 ~ {Text1:'{"text":"\\u30ac\\u30c1\\u30a8\\u30ea\\u30a2\\u30e2\\u30fc\\u30c9"}',Text2:'{"text":"\\u73fe\\u5728\\u30a8\\u30ea\\u30a2C\\u30e2\\u30fc\\u30c9"}',Text3:'{"text":"\\u8a2d\\u5b9a\\u4e2d"}'}

#モード4(D)の場合
execute if score ガチエリア GatiAreaModeJudge matches 4 run function main:mode/gatiarea/game_playing_d
execute if score ガチエリア GatiAreaModeJudge matches 4 at @e[tag=karioki] run data merge block ~ ~2 ~ {Text1:'{"text":"\\u30ac\\u30c1\\u30a8\\u30ea\\u30a2\\u30e2\\u30fc\\u30c9"}',Text2:'{"text":"\\u73fe\\u5728\\u30a8\\u30ea\\u30a2D\\u30e2\\u30fc\\u30c9"}',Text3:'{"text":"\\u8a2d\\u5b9a\\u4e2d"}'}

#モード5(E)の場合
execute if score ガチエリア GatiAreaModeJudge matches 5 run function main:mode/gatiarea/game_playing_e
execute if score ガチエリア GatiAreaModeJudge matches 5 at @e[tag=karioki] run data merge block ~ ~2 ~ {Text1:'{"text":"\\u30ac\\u30c1\\u30a8\\u30ea\\u30a2\\u30e2\\u30fc\\u30c9"}',Text2:'{"text":"\\u73fe\\u5728\\u30a8\\u30ea\\u30a2E\\u30e2\\u30fc\\u30c9"}',Text3:'{"text":"\\u8a2d\\u5b9a\\u4e2d"}'}


#おわり
execute if score ガチエリアボスバー GatiAreaBlueMaxPlus >= ガチエリア時間看板用 GatiAreaModeJudge run function main:mode/gatiarea/gatiarea_finish
execute if score ガチエリアボスバー GatiAreaRedMaxPlus >= ガチエリア時間看板用 GatiAreaModeJudge run function main:mode/gatiarea/gatiarea_finish

execute if score ガチエリアボスバー GatiAreaBlueMaxPlus >= ガチエリア時間看板用 GatiAreaModeJudge run scoreboard players set ガチエリアボスバー GatiAreaBlueMaxPlus 0 
execute if score ガチエリアボスバー GatiAreaRedMaxPlus >= ガチエリア時間看板用 GatiAreaModeJudge run scoreboard players set ガチエリアボスバー GatiAreaRedMaxPlus 0