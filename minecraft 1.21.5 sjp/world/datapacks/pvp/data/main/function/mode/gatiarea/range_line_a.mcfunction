#ガチエリアの範囲わかりやすくするエフェクトA

#青
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 0 0 255 1 ~-5.5 ~0.5 ~0.4 2.3 0 0 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 0 0 255 1 ~0.4 ~0.5 ~-5.5 0 0 2.3 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 0 0 255 1 ~-5.5 ~0.5 ~-11.4 2.3 0 0 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 1 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 0 0 255 1 ~-11.4 ~0.5 ~-5.5 0 0 2.3 0 14 force

#誰もいない（緑）
execute if score ガチエリア GatiAreaWhichOccupying matches 0 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 0 255 0 1 ~-5.5 ~0.5 ~0.4 2.3 0 0 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 0 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 0 255 0 1 ~0.4 ~0.5 ~-5.5 0 0 2.3 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 0 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 0 255 0 1 ~-5.5 ~0.5 ~-11.4 2.3 0 0 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 0 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 0 255 0 1 ~-11.4 ~0.5 ~-5.5 0 0 2.3 0 14 force

#赤
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 255 0 0 1 ~-5.5 ~0.5 ~0.4 2.3 0 0 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 255 0 0 1 ~0.4 ~0.5 ~-5.5 0 0 2.3 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 255 0 0 1 ~-5.5 ~0.5 ~-11.4 2.3 0 0 0 14 force
execute if score ガチエリア GatiAreaWhichOccupying matches 2 run execute at @e[tag=GatiAreaLineA] run particle minecraft:dust 255 0 0 1 ~-11.4 ~0.5 ~-5.5 0 0 2.3 0 14 force

