scoreboard players operation #seconds PickCtrl = #timer PickCtrl
scoreboard players add #seconds PickCtrl 19
scoreboard players operation #seconds PickCtrl /= #20 PickCtrl
scoreboard players set #uiTick PickCtrl 0
execute if score #action PickCtrl matches 1 run function main:job_selection/pick/ui/stage with storage main:pick ui
execute if score #action PickCtrl matches 2 run function main:job_selection/pick/ui/basic with storage main:pick ui
execute if score #action PickCtrl matches 3 if score #done PickCtrl matches 0 run function main:job_selection/pick/ui/pick_0 with storage main:pick ui
execute if score #action PickCtrl matches 3 if score #done PickCtrl matches 1 run function main:job_selection/pick/ui/pick_1 with storage main:pick ui
execute if score #action PickCtrl matches 3 if score #done PickCtrl matches 2.. run function main:job_selection/pick/ui/pick_2 with storage main:pick ui
execute if score #action PickCtrl matches 4 if score #transitionType PickCtrl matches 1 run function main:job_selection/pick/ui/transition_stage with storage main:pick ui
execute if score #action PickCtrl matches 4 if score #transitionType PickCtrl matches 2 run function main:job_selection/pick/ui/transition_ban with storage main:pick ui
execute if score #action PickCtrl matches 4 if score #transitionType PickCtrl matches 3 if score #done PickCtrl matches 1 run function main:job_selection/pick/ui/transition_pick_1 with storage main:pick ui
execute if score #action PickCtrl matches 4 if score #transitionType PickCtrl matches 3 if score #done PickCtrl matches 2.. run function main:job_selection/pick/ui/transition_pick_2 with storage main:pick ui
