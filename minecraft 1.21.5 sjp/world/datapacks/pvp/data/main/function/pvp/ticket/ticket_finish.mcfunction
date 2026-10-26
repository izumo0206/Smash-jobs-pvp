#チケット 勝利判定

#マスタリー呼び出し
function main:pvp/ticket/mastery

#レートシステム呼び出し
execute if score ステージ決め RatingSetting matches 1 run function main:rating/rating_change

#終了呼び出し
function main:stats/record
function main:finish/finish


#タイトル表示
#青チームの勝ち
execute if score 赤チーム ticket matches ..0 run title @a title {"text":"青チームの勝ち!","color":"blue"}

#赤チームの勝ち
execute if score 青チーム ticket matches ..0 run title @a title {"text":"赤チームの勝ち!","color":"red"}

#引き分け
execute if score 青チーム ticket matches ..0 if score 赤チーム ticket matches ..0 run title @a title {"text":"引き分け!!!!!","color":"white"}


#チケット初期化
execute if score 青チーム ticket matches ..0 run scoreboard players reset 青チーム ticket
execute if score 赤チーム ticket matches ..0 run scoreboard players reset 赤チーム ticket


#時間終了
execute as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~3 air
#チケット演算終了
execute as @e[tag=CentralControlSystem] at @s run setblock ~1 ~ ~3 air