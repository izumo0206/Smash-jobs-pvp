tag @a[tag=PickTeamB,tag=!PickSelected] add PickAllowed
execute if entity @a[tag=PickFirst,team=Red] run function main:job_selection/pick/phase/begin_pick {task:"青チーム：2人ピック",timer:1800,need:2}
execute if entity @a[tag=PickFirst,team=Blue] run function main:job_selection/pick/phase/begin_pick {task:"赤チーム：2人ピック",timer:1800,need:2}
function main:job_selection/pick/debug/skip_pick
