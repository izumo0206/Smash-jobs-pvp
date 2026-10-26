scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #6 MKCalc
scoreboard players operation @s MKLevel = @s MKWind
scoreboard players operation @s MKLevel /= #6 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[風強化] 風魔法の爆風威力+0.5、雷魔法の検知範囲+1m。","color":"green"}
execute if score @s MKPower matches 6.. run scoreboard players set @s MKPower 5
execute if score @s MKLevel matches 6.. run scoreboard players set @s MKLevel 5
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[風強化] 炎魔法の持続時間+3秒（上限20秒）。","color":"dark_red"}
scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #8 MKCalc
scoreboard players operation @s MKLevel = @s MKWind
scoreboard players operation @s MKLevel /= #8 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s {"text":"[風強化] 風魔法の爆風範囲+1m・消費MP-30、炎の検知+2m、雷の検知+1m。","color":"green"}
execute if score @s MKPrev matches ..19 if score @s MKWind matches 20.. run tellraw @s {"text":"[風20] 風魔法で自身が速度上昇Iを15秒得て、味方entity全体へ低速落下を15秒付与する。","color":"green"}
execute if score @s MKPrev matches ..29 if score @s MKWind matches 30.. run tellraw @s {"text":"[風30] 風魔法のCTが10になり、速度上昇がIIになった。","color":"green"}
execute if score @s MKPrev matches ..39 if score @s MKWind matches 40.. run function main:pvp/magicking/reward/wind40
execute if score @s MKPrev matches ..49 if score @s MKWind matches 50.. run tellraw @s {"text":"[風50] 風魔法のCTが5になり、速度上昇がIVになった。","color":"green"}
execute if score @s MKPrev matches ..69 if score @s MKWind matches 70.. run tellraw @s {"text":"[風70] 速度上昇IVと低速落下を全ての味方entityへ15秒付与する。","color":"green"}
