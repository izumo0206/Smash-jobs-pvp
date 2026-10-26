scoreboard players set #action PickCtrl 3
$scoreboard players set #timer PickCtrl $(timer)
$scoreboard players set #need PickCtrl $(need)
scoreboard players set #done PickCtrl 0
scoreboard players set #transitionType PickCtrl 0
scoreboard players set #uiTick PickCtrl 0
$bossbar set main:pick max $(timer)
$bossbar set main:pick value $(timer)
$data modify storage main:pick ui.task set value "$(task)"
tp @a[tag=PickAllowed] 9 1 10010 0 0
effect give @a[tag=PickAllowed] minecraft:glowing 999999 0 true
function main:job_selection/pick/ui/team_color
function main:job_selection/pick/ui/update
$tellraw @a[tag=PickViewer] [{"text":"$(task)","color":"yellow"},{"text":"を開始します。","color":"gray"}]
