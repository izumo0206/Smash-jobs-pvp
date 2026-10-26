#ガチエリアのプレイ中にずっと発動させとくやつE

#誰が占領しているか
#青
execute if entity @a[team=Blue,x=-10040,y=9,z=5068,dx=11,dy=10,dz=-11] unless entity @a[team=Red,x=-10040,y=9,z=5068,dx=11,dy=10,dz=-11] run scoreboard players set ガチエリア GatiAreaWhichOccupying 1

#誰も占領していない
execute unless entity @a[team=Red,x=-10040,y=9,z=5068,dx=11,dy=10,dz=-11] unless entity @a[team=Blue,x=-10040,y=9,z=5068,dx=11,dy=10,dz=-11] run scoreboard players set ガチエリア GatiAreaWhichOccupying 0

#赤
execute if entity @a[team=Red,x=-10040,y=9,z=5068,dx=11,dy=10,dz=-11] unless entity @a[team=Blue,x=-10040,y=9,z=5068,dx=11,dy=10,dz=-11] run scoreboard players set ガチエリア GatiAreaWhichOccupying 2

#青が占領してたらプラス、赤ならマイナス
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run scoreboard players add ガチエリア GatiAreaMain 1
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run scoreboard players remove ガチエリア GatiAreaMain 1

#範囲わかりやすくする線を描く
function main:mode/gatiarea/range_line_e

#ゲームプレイ中の演算系のすべて
function main:mode/gatiarea/gatiarea_calculation