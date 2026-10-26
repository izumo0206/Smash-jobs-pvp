#狙った方向に味方がいなかった（ナノブーストは消えない）
tag @s remove HsNanoUser
playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.5 1.2
title @s actionbar {text:"狙った方向に味方がいない",color:"red"}
