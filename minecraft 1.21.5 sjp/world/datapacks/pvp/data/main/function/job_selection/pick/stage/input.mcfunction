execute if score @s PickAction matches 1 run function main:job_selection/pick/stage/select {stage:1,stage_name:"バインド"}
execute if score @s PickAction matches 2 run function main:job_selection/pick/stage/select {stage:2,stage_name:"闘技場"}
execute if score @s PickAction matches 3 run function main:job_selection/pick/stage/select {stage:3,stage_name:"ちゅらうみ"}
execute if score @s PickAction matches 4 run function main:job_selection/pick/stage/select {stage:4,stage_name:"立体交差"}
execute if score @s PickAction matches 5 run function main:job_selection/pick/stage/select {stage:5,stage_name:"高層ビル"}
execute if score @s PickAction matches 6 run function main:job_selection/pick/stage/select {stage:6,stage_name:"デカライン高架下"}
execute if score @s PickAction matches 7 run function main:job_selection/pick/stage/select {stage:7,stage_name:"SJP城"}
execute if score @s PickAction matches 8 run function main:job_selection/pick/stage/confirm
scoreboard players set @s PickAction 0
