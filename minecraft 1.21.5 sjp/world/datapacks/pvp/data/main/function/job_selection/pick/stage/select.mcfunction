$scoreboard players set ステージ決め StageSetting $(stage)
$data modify storage main:pick ui.stage set value "$(stage_name)"
function main:mode/stage_setting_sync
playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1
$tellraw @a[tag=PickStageAllowed] [{"selector":"@s"},{"text":"がステージを「$(stage_name)」に仮選択しました。","color":"yellow"}]
function main:job_selection/pick/ui/update
