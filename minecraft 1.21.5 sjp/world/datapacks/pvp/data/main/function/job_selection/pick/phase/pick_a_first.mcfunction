tag @a[tag=PickFirst,tag=!PickSelected] add PickAllowed
execute if entity @a[tag=PickFirst,team=Red] run function main:job_selection/pick/phase/begin_pick {task:"赤チーム：ファーストピック",timer:1200,need:1}
execute if entity @a[tag=PickFirst,team=Blue] run function main:job_selection/pick/phase/begin_pick {task:"青チーム：ファーストピック",timer:1200,need:1}
