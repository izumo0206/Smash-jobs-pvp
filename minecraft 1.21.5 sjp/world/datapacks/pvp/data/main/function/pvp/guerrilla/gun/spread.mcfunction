##sc/#ss/#mm/#cm から拡散角を決めて shot.n に入れる（実行者：射手）
#立ち：spread_s / しゃがみ止まり：spread_c / 立ち歩き：spread_s × move / しゃがみ歩き：spread_c × crouch_move
scoreboard players operation #n GuCalc = #ss GuCalc
execute if predicate main:is_sneaking run scoreboard players operation #n GuCalc = #sc GuCalc
execute if score @s GuMove matches 1.. if predicate main:is_sneaking run scoreboard players operation #n GuCalc *= #cm GuCalc
execute if score @s GuMove matches 1.. unless predicate main:is_sneaking run scoreboard players operation #n GuCalc *= #mm GuCalc
execute if score @s GuMove matches 1.. run scoreboard players operation #n GuCalc /= #10 GuCalc
execute if score #n GuCalc matches ..0 run scoreboard players set #n GuCalc 1
execute store result storage main:guerrilla shot.n int 1 run scoreboard players get #n GuCalc
