scoreboard players remove #timer StageStartCtrl 1

execute if score #timer StageStartCtrl matches 80 run title @a[tag=StageStartParticipant] title {"text":"4","color":"gold"}
execute if score #timer StageStartCtrl matches 80 as @a[tag=StageStartParticipant] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score #timer StageStartCtrl matches 60 run title @a[tag=StageStartParticipant] title {"text":"3","color":"gold"}
execute if score #timer StageStartCtrl matches 60 as @a[tag=StageStartParticipant] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score #timer StageStartCtrl matches 40 run title @a[tag=StageStartParticipant] title {"text":"2","color":"gold"}
execute if score #timer StageStartCtrl matches 40 as @a[tag=StageStartParticipant] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if score #timer StageStartCtrl matches 20 run title @a[tag=StageStartParticipant] title {"text":"1","color":"gold"}
execute if score #timer StageStartCtrl matches 20 as @a[tag=StageStartParticipant] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1

execute if score #timer StageStartCtrl matches ..0 run data modify storage main:stage_start authorized set value 1b
execute if score #timer StageStartCtrl matches ..0 run function main:start/start
