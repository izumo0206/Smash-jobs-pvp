execute unless data storage main:pick {active:1b} run return 0

# 通常の2vs2・3vs3では、開始後の赤青各チーム人数不足を検出して中止する
scoreboard players set #onlineRed PickCtrl 0
scoreboard players set #onlineBlue PickCtrl 0
execute as @a[tag=PickParticipant,team=Red] run scoreboard players add #onlineRed PickCtrl 1
execute as @a[tag=PickParticipant,team=Blue] run scoreboard players add #onlineBlue PickCtrl 1
execute if score #debug PickCtrl matches 0 unless score #onlineRed PickCtrl = #teamSize PickCtrl run function main:job_selection/pick/abort/player_count
execute unless data storage main:pick {active:1b} run return 0
execute if score #debug PickCtrl matches 0 unless score #onlineBlue PickCtrl = #teamSize PickCtrl run function main:job_selection/pick/abort/player_count
execute unless data storage main:pick {active:1b} run return 0

# ステージ選択中はクリック入力を何度でも受け取れるようにする。
execute if score #action PickCtrl matches 1 run scoreboard players enable @a[tag=PickStageAllowed] PickAction
execute if score #action PickCtrl matches 1 as @a[tag=PickStageAllowed,scores={PickAction=1..8}] at @s run function main:job_selection/pick/stage/input
scoreboard players reset @a[tag=!PickStageAllowed,scores={PickAction=1..}] PickAction

execute if score #timer PickCtrl matches 1.. run scoreboard players remove #timer PickCtrl 1
execute store result bossbar main:pick value run scoreboard players get #timer PickCtrl
scoreboard players add #uiTick PickCtrl 1
execute if score #uiTick PickCtrl matches 20.. run function main:job_selection/pick/ui/update
execute if score #timer PickCtrl matches ..0 run function main:job_selection/pick/timeout
