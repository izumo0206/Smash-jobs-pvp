scoreboard players set #action PickCtrl 1
scoreboard players set #timer PickCtrl 2400
scoreboard players set #transitionType PickCtrl 0
scoreboard players set #uiTick PickCtrl 0
bossbar set main:pick max 2400
bossbar set main:pick value 2400
$data modify storage main:pick ui.task set value "$(task)"
execute unless score ステージ決め StageSetting matches 1..7 run scoreboard players set ステージ決め StageSetting 1
function main:job_selection/pick/stage/name_from_score
function main:mode/stage_setting_sync
function main:job_selection/pick/ui/team_color
function main:job_selection/pick/ui/update
function main:job_selection/pick/stage/show
