#目の位置から視線の先へ0.5ブロックずつ進み、最初に当たったブロックの手前を爆撃地点にする（実行者：ゲリラ兵）
#  #pv 1 = 狙いの表示だけ / 0 = 爆撃を決める
execute store result score #steps GuCalc run data get storage main:guerrilla param.bombbow.aim 2
execute anchored eyes positioned ^ ^ ^ run function main:pvp/guerrilla/reward/aim_ray
