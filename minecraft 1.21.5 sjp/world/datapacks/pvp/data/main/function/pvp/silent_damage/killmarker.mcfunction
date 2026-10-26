#とどめを刺したとき（実行者・位置：撃った人）。大きな赤い「×」とキル音を、撃った本人にだけ
execute anchored eyes positioned ^0.1 ^0.1 ^1.5 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^-0.1 ^0.1 ^1.5 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^0.1 ^-0.1 ^1.5 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^-0.1 ^-0.1 ^1.5 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^0.05 ^0.05 ^1.5 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^-0.05 ^0.05 ^1.5 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^0.05 ^-0.05 ^1.5 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @s
execute anchored eyes positioned ^-0.05 ^-0.05 ^1.5 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @s
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.7
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 0.6
