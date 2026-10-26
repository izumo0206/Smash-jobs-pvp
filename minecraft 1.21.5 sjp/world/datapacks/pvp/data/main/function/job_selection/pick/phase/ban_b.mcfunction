tag @a[tag=PickTeamB] add PickAllowed
execute if entity @a[tag=PickFirst,team=Red] run function main:job_selection/pick/phase/begin_ban {task:"青チーム：BAN"}
execute if entity @a[tag=PickFirst,team=Blue] run function main:job_selection/pick/phase/begin_ban {task:"赤チーム：BAN"}
