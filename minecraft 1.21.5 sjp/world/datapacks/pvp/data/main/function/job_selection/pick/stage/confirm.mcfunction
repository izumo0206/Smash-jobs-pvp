execute unless score #action PickCtrl matches 1 run return 0
function main:job_selection/pick/stage/name_from_score
function main:mode/stage_setting_sync
tag @a remove PickStageAllowed
scoreboard players set #action PickCtrl 4
scoreboard players set #transitionType PickCtrl 1
scoreboard players set #timer PickCtrl 30
scoreboard players set #uiTick PickCtrl 0
bossbar set main:pick max 30
bossbar set main:pick value 30
function main:job_selection/pick/stage/announce_confirm with storage main:pick ui
function main:job_selection/pick/ui/update
