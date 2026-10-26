#時間　終了10秒前カウントダウン

execute if score 時間 time matches 200 run title @a title [{"text":"9"}]
execute if score 時間 time matches 180 run title @a title [{"text":"8"}]
execute if score 時間 time matches 160 run title @a title [{"text":"7"}]
execute if score 時間 time matches 140 run title @a title [{"text":"6"}]
execute if score 時間 time matches 120 run title @a title [{"text":"5"}]
execute if score 時間 time matches 100 run title @a title [{"text":"4"}]
execute if score 時間 time matches 80 run title @a title [{"text":"3"}]
execute if score 時間 time matches 60 run title @a title [{"text":"2"}]
execute if score 時間 time matches 40 run title @a title [{"text":"1"}]

#レートシステム呼び出し
execute if score 時間 time matches 20 if score ステージ決め RatingSetting matches 1 run function main:rating/rating_change

#終了呼び出し
execute if score 時間 time matches 20 run function main:stats/record
execute if score 時間 time matches 20 run function main:finish/finish


#勝利判定

#チケット優先モード
execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 0 unless score 青チーム ticket = 赤チーム ticket if score 青チーム ticket > 赤チーム ticket run title @a title {"text":"青チームの勝ち!","color":"blue"}
execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 0 unless score 青チーム ticket = 赤チーム ticket if score 青チーム ticket < 赤チーム ticket run title @a title {"text":"赤チームの勝ち!","color":"red"}
#チケット数が同じ場合
execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 0 if score 青チーム ticket = 赤チーム ticket if score ガチエリアボスバー GatiAreaBlueMaxPlus > ガチエリアボスバー GatiAreaRedMaxPlus run title @a title {"text":"青チームの勝ち!","color":"blue"}
execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 0 if score 青チーム ticket = 赤チーム ticket if score ガチエリアボスバー GatiAreaBlueMaxPlus < ガチエリアボスバー GatiAreaRedMaxPlus run title @a title {"text":"赤チームの勝ち!","color":"red"}

#ガチエリア優先モード
execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 1 unless score ガチエリアボスバー GatiAreaBlueMaxPlus = ガチエリアボスバー GatiAreaRedMaxPlus if score ガチエリアボスバー GatiAreaBlueMaxPlus > ガチエリアボスバー GatiAreaRedMaxPlus run title @a title {"text":"青チームの勝ち!","color":"blue"}
execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 1 unless score ガチエリアボスバー GatiAreaBlueMaxPlus = ガチエリアボスバー GatiAreaRedMaxPlus if score ガチエリアボスバー GatiAreaBlueMaxPlus < ガチエリアボスバー GatiAreaRedMaxPlus run title @a title {"text":"赤チームの勝ち!","color":"red"}
#ガチエリアが同じ場合
execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 1 if score ガチエリアボスバー GatiAreaBlueMaxPlus = ガチエリアボスバー GatiAreaRedMaxPlus if score 青チーム ticket > 赤チーム ticket run title @a title {"text":"青チームの勝ち!","color":"blue"}
execute if score 時間 time matches 20 if score 勝利判断モード Mode matches 1 if score ガチエリアボスバー GatiAreaBlueMaxPlus = ガチエリアボスバー GatiAreaRedMaxPlus if score 青チーム ticket < 赤チーム ticket run title @a title {"text":"赤チームの勝ち!","color":"red"}

#引き分け
execute if score 時間 time matches 20 if score 青チーム ticket = 赤チーム ticket if score ガチエリアボスバー GatiAreaBlueMaxPlus = ガチエリアボスバー GatiAreaRedMaxPlus run title @a title {"text":"引き分け!!!!!","color":"white"}


#時間終了
execute if score 時間 time matches 0 as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~3 air
#チケット演算終了
execute if score 時間 time matches 0 as @e[tag=CentralControlSystem] at @s run setblock ~1 ~ ~3 air
