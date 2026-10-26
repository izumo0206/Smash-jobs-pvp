scoreboard players set #action PickCtrl 2
scoreboard players set #timer PickCtrl 1200
scoreboard players set #need PickCtrl 1
scoreboard players set #done PickCtrl 0
scoreboard players set #transitionType PickCtrl 0
scoreboard players set #uiTick PickCtrl 0
bossbar set main:pick max 1200
bossbar set main:pick value 1200
$data modify storage main:pick ui.task set value "$(task)"
tp @a[tag=PickAllowed] 9 1 10010 0 0
effect give @a[tag=PickAllowed] minecraft:glowing 999999 0 true
function main:job_selection/pick/ui/team_color
function main:job_selection/pick/ui/update
$tellraw @a[tag=PickViewer] [{"text":"$(task)","color":"yellow"},{"text":"：チーム内で最初に押されたジョブをBANします。","color":"gray"}]
