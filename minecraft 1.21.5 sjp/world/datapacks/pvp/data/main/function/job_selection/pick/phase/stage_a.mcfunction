tag @a[tag=PickTeamA] add PickStageAllowed
execute if entity @a[tag=PickFirst,team=Red] run function main:job_selection/pick/phase/begin_stage {task:"赤チーム：ステージ選択・作戦会議"}
execute if entity @a[tag=PickFirst,team=Blue] run function main:job_selection/pick/phase/begin_stage {task:"青チーム：ステージ選択・作戦会議"}
