scoreboard players set @s MKPower 0
execute if score @s MKPrev matches 15.. run scoreboard players set @s MKPower 1
execute if score @s MKPrev matches 30.. run scoreboard players set @s MKPower 2
execute if score @s MKPrev matches 45.. run scoreboard players set @s MKPower 3
execute if score @s MKPrev matches 60.. run scoreboard players set @s MKPower 4
execute if score @s MKPrev matches 75.. run scoreboard players set @s MKPower 5
scoreboard players set @s MKLevel 0
execute if score @s MKDark matches 15.. run scoreboard players set @s MKLevel 1
execute if score @s MKDark matches 30.. run scoreboard players set @s MKLevel 2
execute if score @s MKDark matches 45.. run scoreboard players set @s MKLevel 3
execute if score @s MKDark matches 60.. run scoreboard players set @s MKLevel 4
execute if score @s MKDark matches 75.. run scoreboard players set @s MKLevel 5
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[闇強化] 闇魔法の鈍足レベル+1（上限VI）。","color":"dark_gray"}
scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #8 MKCalc
scoreboard players operation @s MKLevel = @s MKDark
scoreboard players operation @s MKLevel /= #8 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[闇強化] 闇魔法の消費MP-30・CD-5。","color":"dark_gray"}
execute if score @s MKPrev matches ..19 if score @s MKDark matches 20.. run tellraw @s {"text":"[闇20] 闇魔法が暗闇も与える。","color":"dark_gray"}
execute if score @s MKPrev matches ..29 if score @s MKDark matches 30.. run tellraw @s {"text":"[闇30] 闇の魔法のCTが10になった。","color":"dark_gray"}
execute if score @s MKPrev matches ..39 if score @s MKDark matches 40.. run tellraw @s {"text":"[闇40] 闇魔法の対象が2人になった。","color":"dark_gray"}
execute if score @s MKPrev matches ..49 if score @s MKDark matches 50.. run tellraw @s {"text":"[闇50] 闇の魔法のCTが5になった。","color":"dark_gray"}
execute if score @s MKPrev matches ..69 if score @s MKDark matches 70.. run tellraw @s {"text":"[闇70] 敵player全員へ跳躍力上昇200も与える。","color":"dark_gray"}
