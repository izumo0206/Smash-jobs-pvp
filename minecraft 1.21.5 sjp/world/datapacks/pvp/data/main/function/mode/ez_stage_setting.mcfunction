#遊ぶエリアを決めるところ（後でTPする場所決めるよう）

playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1

execute if score ステージ決め StageSetting matches 7 run scoreboard players set ステージ決め StageSetting 0

execute if score ステージ決め StageSetting matches 6 run scoreboard players set ステージ決め StageSetting 7

execute if score ステージ決め StageSetting matches 5 run scoreboard players set ステージ決め StageSetting 6

execute if score ステージ決め StageSetting matches 4 run scoreboard players set ステージ決め StageSetting 5

execute if score ステージ決め StageSetting matches 3 run scoreboard players set ステージ決め StageSetting 4

execute if score ステージ決め StageSetting matches 2 run scoreboard players set ステージ決め StageSetting 3

execute if score ステージ決め StageSetting matches 1 run scoreboard players set ステージ決め StageSetting 2

execute if score ステージ決め StageSetting matches 0 run scoreboard players set ステージ決め StageSetting 1

#物理看板とステージ用レッドストーンを共通処理で同期
function main:mode/stage_setting_sync


#すでにステージに人がいる場合に強制帰還させるやつ
execute as @a[scores={NumberOfPlayer=1..}] run tellraw @s {"text":"ステージが変えられたので、待機所にTPしました","color":"green"}

execute as @a[scores={NumberOfPlayer=1..}] run tp @s 5027 1 5011 90 0

execute as @a[scores={NumberOfPlayer=1..}] run scoreboard players set @s NumberOfPlayer 0

scoreboard players set プレイヤーの人数 NumberOfPlayer 0

scoreboard players set 青チーム NumberOfPlayer 0

scoreboard players set 赤チーム NumberOfPlayer 0

scoreboard players set 終了合意人数 NumberOfPlayer 0

scoreboard players set 終了合意判定 NumberOfPlayer 0
