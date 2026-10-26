#ガチエリアの初期設定
#カウントを0に
scoreboard players set ガチエリア GatiAreaMain 0

#ボスバーセット
bossbar add minecraft:gatiarea "ガチエリア"

#ボスバーの最大値
bossbar set minecraft:gatiarea max 4000

#ボスバーの色
bossbar set minecraft:gatiarea color green

#ボスバーの区切り線の数
bossbar set minecraft:gatiarea style notched_20

#ボスバーの初期値の設定
scoreboard players set ガチエリア GatiAreaMainBossber 2000

#最初はだれも占領してない（一応）
scoreboard players set ガチエリア GatiAreaWhichOccupying 0

#青の初期値の最大値を0に
scoreboard players set ガチエリア GatiAreaBlueMaxPlus 0

#赤の初期値の最大値を0に
scoreboard players set ガチエリア GatiAreaRedMaxPlus 0

#ガチエリア20に20を代入
scoreboard players set ガチエリア20 GatiAreaMain 20

#ガチエリア0に0を代入
scoreboard players set ガチエリア0 GatiAreaMain 0

#ボスバーを表示
bossbar set minecraft:gatiarea players @a