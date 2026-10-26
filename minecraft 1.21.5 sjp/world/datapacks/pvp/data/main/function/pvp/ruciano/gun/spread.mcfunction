#拡散角の決定（立ち・しゃがみ共に286、移動時は4倍）
scoreboard players set #n RcCalc 286
execute if score @s RcMove matches 1.. run scoreboard players set #n RcCalc 1144
execute store result storage main:ruciano shot.n int 1 run scoreboard players get #n RcCalc
