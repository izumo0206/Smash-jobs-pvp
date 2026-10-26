#前試合から残ったコインゲート進捗を開始時にも初期化
scoreboard players set @a diamond 0
execute if data storage main:shop_gate {setup:1b} run function main:mode/shop/diamond/gate/reset
execute if score ステージ決め ShopSetting matches 1 unless data storage main:shop_console {setup:1b} run function main:mode/shop/console/setup
execute if data storage main:shop_console {setup:1b} run function main:mode/shop/console/reset_match

#青チームスポーン
execute if score ステージ決め StageSetting matches 1 run spawnpoint @a[team=Blue] 1 1 -41 0

execute if score ステージ決め StageSetting matches 2 run spawnpoint @a[team=Blue] -230 -1 -9 -90

execute if score ステージ決め StageSetting matches 3 run spawnpoint @a[team=Blue] -4902 5 4963 90

execute if score ステージ決め StageSetting matches 4 run spawnpoint @a[team=Blue] -10047 7 5111 90

execute if score ステージ決め StageSetting matches 5 run spawnpoint @a[team=Blue] -9971 4 10000 90

execute if score ステージ決め StageSetting matches 6 run spawnpoint @a[team=Blue] 4981 9 188 180

execute if score ステージ決め StageSetting matches 7 run spawnpoint @a[team=Blue] 10000 3 15038 180

#青チームtp
execute if score ステージ決め StageSetting matches 1 run tp @a[team=Blue] 1.5 1 -41 -180 0

execute if score ステージ決め StageSetting matches 2 run tp @a[team=Blue] -230 -1 -9.5 -90 0

execute if score ステージ決め StageSetting matches 3 run tp @a[team=Blue] -4902 5 4963 108 0

execute if score ステージ決め StageSetting matches 4 run tp @a[team=Blue] -10047 7 5111 -166 0

execute if score ステージ決め StageSetting matches 5 run tp @a[team=Blue] -9971 4 10000 90 0

execute if score ステージ決め StageSetting matches 6 run tp @a[team=Blue] 4981 9 188 162 0

execute if score ステージ決め StageSetting matches 7 run tp @a[team=Blue] 10000 3 15038 180 0

#赤チームスポーン
execute if score ステージ決め StageSetting matches 1 run spawnpoint @a[team=Red] 3 1 39 -180

execute if score ステージ決め StageSetting matches 2 run spawnpoint @a[team=Red] -284 -1 -9 -90

execute if score ステージ決め StageSetting matches 3 run spawnpoint @a[team=Red] -4994 5 4934 -90

execute if score ステージ決め StageSetting matches 4 run spawnpoint @a[team=Red] -10023 7 5015 -90

execute if score ステージ決め StageSetting matches 5 run spawnpoint @a[team=Red] -10029 4 10000 -90

execute if score ステージ決め StageSetting matches 6 run spawnpoint @a[team=Red] 4921 9 7 180

execute if score ステージ決め StageSetting matches 7 run spawnpoint @a[team=Red] 10000 3 14962 0

#赤チームtp
execute if score ステージ決め StageSetting matches 1 run tp @a[team=Red] 3 1 39 -180 0

execute if score ステージ決め StageSetting matches 2 run tp @a[team=Red] -284 -1 -9 -90 0

execute if score ステージ決め StageSetting matches 3 run tp @a[team=Red] -4994 5 4934 -72 0

execute if score ステージ決め StageSetting matches 4 run tp @a[team=Red] -10023 7 5015 14 0

execute if score ステージ決め StageSetting matches 5 run tp @a[team=Red] -10029 4 10000 -90 0

execute if score ステージ決め StageSetting matches 6 run tp @a[team=Red] 4921 9 7 -18 0

execute if score ステージ決め StageSetting matches 7 run tp @a[team=Red] 10000 3 14962 0 0

#
execute if score ステージ決め StageSetting matches 1 run function main:stage/stage_set
execute if data storage main:stage_start {pick_debug:1b} if score ステージ決め StageSetting matches 1 run function main:stage/stage_start

execute if score ステージ決め StageSetting matches 2 run function main:stage/stage_set2
execute if data storage main:stage_start {pick_debug:1b} if score ステージ決め StageSetting matches 2 run function main:stage/stage_start2

#ステージ3～7 共通開始待機
execute if score ステージ決め StageSetting matches 3..7 run function main:stage/common_start/begin

execute if score ステージ決め ShopSetting matches 1 if score ステージ決め StageSetting matches 2 run function main:mode/shop/semai/dia

execute if score ステージ決め ShopSetting matches 1 if score ステージ決め StageSetting matches 1 run function main:mode/shop/bind/dia

tag @a remove Standbypick
data remove storage main:stage_start pick_debug
