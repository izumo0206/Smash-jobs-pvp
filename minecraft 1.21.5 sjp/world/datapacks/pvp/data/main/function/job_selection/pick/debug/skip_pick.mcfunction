# 人数不足デバッグでは、ファーストピック以外をランダム付与して即時完了する
execute unless score #debug PickCtrl matches 1 run return 0
function main:job_selection/pick/timeout/pick
# 2人枠に実在プレイヤーが1人だけいた場合、付与後の残り欠員を同じtickで補完する
execute if score #action PickCtrl matches 3 run function main:job_selection/pick/timeout/pick
execute if score #action PickCtrl matches 4 run scoreboard players set #timer PickCtrl 1
execute if score #action PickCtrl matches 4 run bossbar set main:pick value 1
