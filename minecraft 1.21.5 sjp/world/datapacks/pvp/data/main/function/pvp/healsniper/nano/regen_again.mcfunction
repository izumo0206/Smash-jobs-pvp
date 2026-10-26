#スナイパーの回復で再生が上書きされたとき、残り時間ぶんのナノブーストの再生を付け直す
scoreboard players operation #s HsCalc = @s HsNano
scoreboard players add #s HsCalc 19
scoreboard players operation #s HsCalc /= #20 HsCalc
execute store result storage main:healsniper tmp.sec int 1 run scoreboard players get #s HsCalc
data modify storage main:healsniper tmp.lv set from storage main:healsniper param.nano.regen_lv
function main:pvp/healsniper/nano/regen_again_m with storage main:healsniper tmp
