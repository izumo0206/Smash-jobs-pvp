scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #6 MKCalc
scoreboard players operation @s MKLevel = @s MKFire
scoreboard players operation @s MKLevel /= #6 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s ["",{"text":"[火強化] ","color":"red","bold":true},{"text":"火6ごと: 火球威力と炎半径が上昇（現在 ","color":"red"},{"score":{"name":"@s","objective":"MKFire"}},{"text":"）"}]
scoreboard players operation @s MKPower = @s MKPrev
scoreboard players operation @s MKPower /= #8 MKCalc
scoreboard players operation @s MKLevel = @s MKFire
scoreboard players operation @s MKLevel /= #8 MKCalc
execute if score @s MKLevel > @s MKPower run tellraw @s ["",{"text":"[火強化] ","color":"red","bold":true},{"text":"火・炎魔法の消費MPが30低下（下限100）","color":"red"}]
execute if score @s MKPrev matches ..19 if score @s MKFire matches 20.. run tellraw @s {"text":"[火20] 火魔法が周囲8mの敵playerへ燃焼5を与えるようになった。","color":"red"}
execute if score @s MKPrev matches ..29 if score @s MKFire matches 30.. run tellraw @s {"text":"[火30] 火の魔法のCTが10になった。","color":"red"}
execute if score @s MKPrev matches ..39 if score @s MKFire matches 40.. run function main:pvp/magicking/reward/fire20
execute if score @s MKPrev matches ..49 if score @s MKFire matches 50.. run tellraw @s {"text":"[火50] 火の魔法のCTが5になった。","color":"red"}
execute if score @s MKPrev matches ..69 if score @s MKFire matches 70.. run tellraw @s {"text":"[火70] 火の魔法の燃焼対象が範囲内の敵entity全てになった。","color":"red"}
