#ガチエリアのプレイ中の演算

#ボスバーのゲージの演算
scoreboard players operation ガチエリアボスバー GatiAreaMainBossber = ガチエリア GatiAreaMainBossber

scoreboard players operation ガチエリアボスバー GatiAreaMainBossber += ガチエリア GatiAreaMain

execute store result bossbar minecraft:gatiarea value run scoreboard players get ガチエリアボスバー GatiAreaMainBossber


#ボスバーの名前部分（赤と青の最大値）の演算
#とりま時が来たら代入
#青
execute if score ガチエリア GatiAreaMain >= ガチエリア GatiAreaBlueMaxPlus run scoreboard players operation ガチエリア GatiAreaBlueMaxPlus = ガチエリア GatiAreaMain

#赤
execute if score ガチエリア GatiAreaMain <= ガチエリア GatiAreaRedMaxPlus run scoreboard players operation ガチエリア GatiAreaRedMaxPlus = ガチエリア GatiAreaMain


#青の演算
scoreboard players operation ガチエリアボスバー GatiAreaBlueMaxPlus = ガチエリア GatiAreaBlueMaxPlus

scoreboard players operation ガチエリアボスバー GatiAreaBlueMaxPlus /= ガチエリア20 GatiAreaMain

#赤の演算
scoreboard players operation ガチエリアボスバー GatiAreaRedMaxPlus = ガチエリア GatiAreaRedMaxPlus

scoreboard players operation ガチエリアボスバー GatiAreaRedMaxPlus /= ガチエリア20 GatiAreaMain

scoreboard players operation ガチエリアボスバー2 GatiAreaRedMaxPlus = ガチエリアボスバー GatiAreaRedMaxPlus

scoreboard players operation ガチエリアボスバー GatiAreaRedMaxPlus -= ガチエリアボスバー2 GatiAreaRedMaxPlus

scoreboard players operation ガチエリアボスバー GatiAreaRedMaxPlus -= ガチエリアボスバー2 GatiAreaRedMaxPlus

#現在の数値の演算
#どちらがプラスかを判別するやつ（表示させるときに使う）（赤）
scoreboard players set ガチエリア GatiAreaWhichPlusNow 1

#演算（プラスマイナス共通）
scoreboard players operation ガチエリアボスバー GatiAreaMain = ガチエリア GatiAreaMain

scoreboard players operation ガチエリアボスバー GatiAreaMain /= ガチエリア20 GatiAreaMain

#演算（マイナス（赤色）の場合のみ行う）
execute if score ガチエリアボスバー GatiAreaMain <= ガチエリア0 GatiAreaMain run scoreboard players operation ガチエリアボスバー2 GatiAreaMain = ガチエリアボスバー GatiAreaMain

execute if score ガチエリアボスバー2 GatiAreaMain <= ガチエリア0 GatiAreaMain run scoreboard players operation ガチエリアボスバー GatiAreaMain -= ガチエリアボスバー2 GatiAreaMain

execute if score ガチエリアボスバー2 GatiAreaMain <= ガチエリア0 GatiAreaMain run scoreboard players operation ガチエリアボスバー GatiAreaMain -= ガチエリアボスバー2 GatiAreaMain

execute if score ガチエリアボスバー2 GatiAreaMain <= ガチエリア0 GatiAreaMain run scoreboard players set ガチエリア GatiAreaWhichPlusNow 2

execute if score ガチエリアボスバー2 GatiAreaMain <= ガチエリア0 GatiAreaMain run scoreboard players set ガチエリアボスバー2 GatiAreaMain 256


#ボスバーの表示の設定
#スコアの値によって、占領しているとこの色と現在の数値の色を変えてる
execute if score ガチエリア GatiAreaWhichOccupying matches 0 if score ガチエリアボスバー GatiAreaMain matches 0 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    目標は確保されていない！  ","color":"white"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"yellow"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]

execute if score ガチエリア GatiAreaWhichOccupying matches 1 if score ガチエリアボスバー GatiAreaMain matches 0 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    青チームが目標を確保中！  ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"yellow"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]

execute if score ガチエリア GatiAreaWhichOccupying matches 2 if score ガチエリアボスバー GatiAreaMain matches 0 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    赤チームが目標を確保中！  ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"yellow"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]

execute unless score ガチエリアボスバー GatiAreaMain matches 0 if score ガチエリア GatiAreaWhichOccupying matches 0 if score ガチエリア GatiAreaWhichPlusNow matches 1 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    目標は確保されていない！  ","color":"white"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"blue"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]

execute unless score ガチエリアボスバー GatiAreaMain matches 0 if score ガチエリア GatiAreaWhichOccupying matches 1 if score ガチエリア GatiAreaWhichPlusNow matches 1 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    青チームが目標を確保中！  ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"blue"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]

execute unless score ガチエリアボスバー GatiAreaMain matches 0 if score ガチエリア GatiAreaWhichOccupying matches 2 if score ガチエリア GatiAreaWhichPlusNow matches 1 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    赤チームが目標を確保中！  ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"blue"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]

execute unless score ガチエリアボスバー GatiAreaMain matches 0 if score ガチエリア GatiAreaWhichOccupying matches 0 if score ガチエリア GatiAreaWhichPlusNow matches 2 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    目標は確保されていない！  ","color":"white"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"red"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]

execute unless score ガチエリアボスバー GatiAreaMain matches 0 if score ガチエリア GatiAreaWhichOccupying matches 1 if score ガチエリア GatiAreaWhichPlusNow matches 2 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    青チームが目標を確保中！  ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"red"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]

execute unless score ガチエリアボスバー GatiAreaMain matches 0 if score ガチエリア GatiAreaWhichOccupying matches 2 if score ガチエリア GatiAreaWhichPlusNow matches 2 run bossbar set minecraft:gatiarea name ["",{"text":"赤チーム ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaRedMaxPlus"},"color":"red"},{"text":"    赤チームが目標を確保中！  ","color":"red"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaMain"},"color":"red"},{"text":"   青チーム ","color":"blue"},{"score":{"name":"ガチエリアボスバー","objective":"GatiAreaBlueMaxPlus"},"color":"blue"}]
