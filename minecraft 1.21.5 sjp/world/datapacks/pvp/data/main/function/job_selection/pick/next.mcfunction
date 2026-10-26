function main:job_selection/pick/phase/clear
scoreboard players add #step PickCtrl 1
execute if score #rule PickCtrl matches 20 run function main:job_selection/pick/rule/20
execute if score #rule PickCtrl matches 21 run function main:job_selection/pick/rule/21
execute if score #rule PickCtrl matches 30 run function main:job_selection/pick/rule/30
execute if score #rule PickCtrl matches 31 run function main:job_selection/pick/rule/31
