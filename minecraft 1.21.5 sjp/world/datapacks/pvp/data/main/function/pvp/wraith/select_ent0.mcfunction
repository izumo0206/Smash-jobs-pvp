#自身を入口に決定
scoreboard players set @s wraith_ent 0
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
title @s actionbar {text:'【入口決定】自身 ➔ 送りたい先をQ / 武器を再Qでキャンセル',color:'yellow'}
