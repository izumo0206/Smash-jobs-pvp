scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #6 MKCalc
scoreboard players operation @s MKLevel = @s MKLight
scoreboard players operation @s MKLevel /= #6 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[光強化] 光魔法の持続+5秒、雷の検知範囲+1m。","color":"yellow"}
scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #8 MKCalc
scoreboard players operation @s MKLevel = @s MKLight
scoreboard players operation @s MKLevel /= #8 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[光強化] 光・雷魔法の消費MPが30低下した（下限100）。","color":"yellow"}
execute if score @s MKPrev matches ..19 if score @s MKLight matches 20.. run tellraw @s {"text":"[光20] 光魔法の対象が2人になった。","color":"yellow"}
execute if score @s MKPrev matches ..29 if score @s MKLight matches 30.. run tellraw @s {"text":"[光30] 光の魔法のCTが5になった。","color":"yellow"}
execute if score @s MKPrev matches ..39 if score @s MKLight matches 40.. run tellraw @s {"text":"[光40] 光の魔法のCDが20になった。","color":"yellow"}
execute if score @s MKPrev matches ..49 if score @s MKLight matches 50.. run tellraw @s {"text":"[光50] 光の魔法で透明化を10秒得る。","color":"yellow"}
execute if score @s MKPrev matches ..69 if score @s MKLight matches 70.. run tellraw @s {"text":"[光70] 敵player全員を発光させ、自分の体力を20回復する。","color":"yellow"}
