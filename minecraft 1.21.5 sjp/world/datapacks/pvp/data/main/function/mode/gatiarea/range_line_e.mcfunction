#ガチエリアの範囲わかりやすくするエフェクトE

#青
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 0 0 255 1 ~-5 ~0.5 ~0.4 1.9 0 0 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 0 0 255 1 ~0.4 ~0.5 ~-5 0 0 1.9 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 0 0 255 1 ~-5 ~0.5 ~-10.4 1.9 0 0 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 0 0 255 1 ~-10.4 ~0.5 ~-5 0 0 1.9 0 10 force
#緑
execute if score ガチエリア GatiAreaWhichOccupying matches 0 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 0 255 0 1 ~-5 ~0.5 ~0.4 1.9 0 0 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 0 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 0 255 0 1 ~0.4 ~0.5 ~-5 0 0 1.9 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 0 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 0 255 0 1 ~-5 ~0.5 ~-10.4 1.9 0 0 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 0 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 0 255 0 1 ~-10.4 ~0.5 ~-5 0 0 1.9 0 10 force
#赤
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 255 0 0 1 ~-5 ~0.5 ~0.4 1.9 0 0 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 255 0 0 1 ~0.4 ~0.5 ~-5 0 0 1.9 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 255 0 0 1 ~-5 ~0.5 ~-10.4 1.9 0 0 0 10 force
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run execute at @e[tag=GatiAreaLineE] run particle minecraft:dust 255 0 0 1 ~-10.4 ~0.5 ~-5 0 0 1.9 0 10 force