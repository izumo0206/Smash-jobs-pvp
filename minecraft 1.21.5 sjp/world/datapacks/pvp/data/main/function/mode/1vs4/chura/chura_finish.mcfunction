#終了処理
execute as @a[tag=Escaper,scores={alleycount=2..}] run return run title @a title {"text":"まだタスクが終わっていません！","color":"blue"}

execute as @a[tag=Escaper,scores={alleycount=..1}] run title @a title {"text":"逃亡者の勝ち!","color":"blue"}

function main:finish/finish

#チケット初期化
execute if score 青チーム ticket matches ..0 run scoreboard players reset 青チーム ticket
execute if score 赤チーム ticket matches ..0 run scoreboard players reset 赤チーム ticket



#時間終了
execute as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~3 air
#チケット演算終了
execute as @e[tag=CentralControlSystem] at @s run setblock ~1 ~ ~3 air