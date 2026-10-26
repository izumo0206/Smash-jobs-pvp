#入口選択キャンセル共通処理
scoreboard players set @s wraith_ent -1
scoreboard players set @s wraith_exit -1
tag @e remove WraithCurrentIn
tag @e remove WraithCurrentOut
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.8
title @s actionbar {text:'入口選択をキャンセルしました',color:'gray'}
