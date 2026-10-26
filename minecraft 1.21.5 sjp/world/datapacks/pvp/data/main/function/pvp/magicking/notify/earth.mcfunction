scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #6 MKCalc
scoreboard players operation @s MKLevel = @s MKEarth
scoreboard players operation @s MKLevel /= #6 MKCalc
execute if score @s MKLevel > @s MKPower if score @s MKEarth matches ..30 run tellraw @s {"text":"[土強化] 土魔法の威力+2・耐性持続+5秒、氷の検知範囲+1m。","color":"gold"}
execute if score @s MKLevel > @s MKPower if score @s MKEarth matches 31..54 run tellraw @s {"text":"[土強化] 土魔法の威力+2、耐性持続は上限30秒。氷の検知範囲+1m。","color":"gold"}
execute if score @s MKLevel > @s MKPower if score @s MKEarth matches 55.. run tellraw @s {"text":"[土強化] 土魔法の威力は上限20、耐性持続は上限30秒。氷の検知範囲+1m。","color":"gold"}
scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #8 MKCalc
scoreboard players operation @s MKLevel = @s MKEarth
scoreboard players operation @s MKLevel /= #8 MKCalc
execute if score @s MKLevel > @s MKPower unless score @s MKEarth matches 72.. run tellraw @s {"text":"[土強化] 土魔法の消費MP低下・範囲+1m（上限12m）、氷の検知範囲+1m。","color":"gold"}
execute if score @s MKLevel > @s MKPower if score @s MKEarth matches 72.. run tellraw @s {"text":"[土強化] 土魔法の範囲は上限12m。氷の検知範囲+1m。","color":"gold"}
execute if score @s MKPrev matches ..19 if score @s MKEarth matches 20.. run tellraw @s {"text":"[土20] 範囲内の敵へ鈍足Iを5秒与える。","color":"gold"}
execute if score @s MKPrev matches ..29 if score @s MKEarth matches 30.. run tellraw @s {"text":"[土30] 土の魔法のCTが10になり、耐性持続が上限30秒に達した。","color":"gold"}
execute if score @s MKPrev matches ..39 if score @s MKEarth matches 40.. run function main:pvp/magicking/reward/earth30
execute if score @s MKPrev matches ..49 if score @s MKEarth matches 50.. run tellraw @s {"text":"[土50] 土の魔法のCTが5になった。","color":"gold"}
execute if score @s MKPrev matches ..69 if score @s MKEarth matches 70.. run tellraw @s {"text":"[土70] 範囲内の敵へ鈍足IIIを5秒与える。","color":"gold"}
