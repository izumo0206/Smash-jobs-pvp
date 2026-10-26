#アレイ殺す
execute at @e[tag=ChuraTask1,scores={task=2999..}] run kill @e[type=allay,distance=..5]
execute at @e[tag=ChuraTask1,scores={task=3000..}] run scoreboard players set @e[tag=ChuraTask1] task 0

execute at @e[tag=ChuraTask2,scores={task=2999..}] run kill @e[type=allay,distance=..5]
execute at @e[tag=ChuraTask2,scores={task=3000..}] run scoreboard players set @e[tag=ChuraTask2] task 0

execute at @e[tag=ChuraTask3,scores={task=2999..}] run kill @e[type=allay,distance=..5]
execute at @e[tag=ChuraTask3,scores={task=3000..}] run scoreboard players set @e[tag=ChuraTask3] task 0

execute at @e[tag=ChuraTask4,scores={task=2999..}] run kill @e[type=allay,distance=..5]
execute at @e[tag=ChuraTask4,scores={task=3000..}] run scoreboard players set @e[tag=ChuraTask4] task 0

execute at @e[tag=ChuraTask5,scores={task=2999..}] run kill @e[type=allay,distance=..5]
execute at @e[tag=ChuraTask5,scores={task=3000..}] run scoreboard players set @e[tag=ChuraTask5] task 0

execute at @e[tag=ChuraTask6,scores={task=2999..}] run kill @e[type=allay,distance=..5]
execute at @e[tag=ChuraTask6,scores={task=3000..}] run scoreboard players set @e[tag=ChuraTask6] task 0

execute at @e[tag=ChuraTask7,scores={task=2999..}] run kill @e[type=allay,distance=..5]
execute at @e[tag=ChuraTask7,scores={task=3000..}] run scoreboard players set @e[tag=ChuraTask7] task 0

#アレイ数える
execute store result score @a[tag=Escaper] alleycount if entity @e[tag=Task]

#タスク達成
function main:mode/1vs4/looking_at

#xp反映
function main:mode/1vs4/tasseijoukyou_xp

#パーティクル
function main:mode/1vs4/tasseijoukyou_particle

#足場
function main:mode/1vs4/chura/chura_dasshutsu