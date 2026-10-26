function main:pvp/magicking/spell/wind/calculate
#速度レベル表示を退避
scoreboard players operation @s MKDuration = @s MKLevel
execute if score @s MKWind matches 20.. run scoreboard players add @s MKDuration 1
#MKPowerの0.5単位数から整数部と小数部を作る
scoreboard players operation @s MKCount = @s MKPower
scoreboard players operation @s MKCount %= #2 MKCalc
scoreboard players operation @s MKLevel = @s MKPower
scoreboard players operation @s MKLevel /= #2 MKCalc
execute if score @s MKCount matches 0 run tellraw @s ["",{"text":"選択: 風の魔法","color":"green","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 爆風威力 "},{"score":{"name":"@s","objective":"MKLevel"}},{"text":".0 / 範囲 "},{"score":{"name":"@s","objective":"MKRange"}},{"text":"m"}]
execute if score @s MKCount matches 1 run tellraw @s ["",{"text":"選択: 風の魔法","color":"green","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 爆風威力 "},{"score":{"name":"@s","objective":"MKLevel"}},{"text":".5 / 範囲 "},{"score":{"name":"@s","objective":"MKRange"}},{"text":"m"}]
tellraw @s {"text":"爆風効果: 自分以外の周囲entityを吹き飛ばす","color":"green"}
execute if score @s MKWind matches ..19 run tellraw @s {"text":"バフ: なし / 風獲得: 発動時8m内に敵playerがいれば+1","color":"gray"}
execute if score @s MKWind matches 20..69 run tellraw @s ["",{"text":"バフ: 自身へ速度上昇"},{"score":{"name":"@s","objective":"MKDuration"}},{"text":"、味方entity全体へ低速落下（各15秒） / 風獲得: 発動時8m内に敵playerがいれば+1"}]
execute if score @s MKWind matches 70.. run tellraw @s {"text":"バフ: 味方entity全体へ速度上昇IV・低速落下を15秒 / 風獲得: 発動時8m内に敵playerがいれば+1","color":"green"}
