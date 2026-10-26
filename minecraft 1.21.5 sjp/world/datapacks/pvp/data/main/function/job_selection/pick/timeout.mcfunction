execute if score #action PickCtrl matches 1 run return run function main:job_selection/pick/stage/confirm
execute if score #action PickCtrl matches 2 run return run function main:job_selection/pick/complete/ban_none
execute if score #action PickCtrl matches 3 run return run function main:job_selection/pick/timeout/pick
execute if score #action PickCtrl matches 4 run return run function main:job_selection/pick/next
