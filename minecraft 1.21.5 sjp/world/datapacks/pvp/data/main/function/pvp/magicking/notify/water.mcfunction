scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #6 MKCalc
scoreboard players operation @s MKLevel = @s MKWater
scoreboard players operation @s MKLevel /= #6 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[水強化] 水壁の持続時間+1秒、氷魔法の検知範囲+1m。","color":"aqua"}
scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #8 MKCalc
scoreboard players operation @s MKLevel = @s MKWater
scoreboard players operation @s MKLevel /= #8 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[水強化] 水・氷魔法の消費MPが30低下した（下限100）。","color":"aqua"}
execute if score @s MKPrev matches ..19 if score @s MKWater matches 20.. run tellraw @s {"text":"[水20] 水壁が5×5になり、発動時に即時回復I（体力4回復）を得る。","color":"aqua"}
execute if score @s MKPrev matches ..29 if score @s MKWater matches 30.. run tellraw @s {"text":"[水30] 水の魔法のCTが10になった。","color":"aqua"}
execute if score @s MKPrev matches ..39 if score @s MKWater matches 40.. run tellraw @s {"text":"[水40] 水壁が7×7になった。","color":"aqua"}
execute if score @s MKPrev matches ..49 if score @s MKWater matches 50.. run tellraw @s {"text":"[水50] 水の魔法のCTが5になった。","color":"aqua"}
execute if score @s MKPrev matches ..69 if score @s MKWater matches 70.. run tellraw @s {"text":"[水70] 水壁が9×9になり、発動時の回復が即時回復II（体力8回復）になった。","color":"aqua"}
