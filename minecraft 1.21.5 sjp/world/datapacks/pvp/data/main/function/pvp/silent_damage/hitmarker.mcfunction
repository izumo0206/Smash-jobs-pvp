#ヒットマーカー（実行者・位置：撃った人）。クロスヘアの周りに小さな「×」を、撃った本人にだけ表示する
execute anchored eyes positioned ^0.06 ^0.06 ^1.5 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^-0.06 ^0.06 ^1.5 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^0.06 ^-0.06 ^1.5 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^-0.06 ^-0.06 ^1.5 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @s
