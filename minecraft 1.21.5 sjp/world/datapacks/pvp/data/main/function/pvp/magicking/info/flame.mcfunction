function main:pvp/magicking/spell/flame/calculate
tellraw @s ["",{"text":"選択: 炎の魔法","color":"dark_red","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 検知 "},{"score":{"name":"@s","objective":"MKRange"}},{"text":"m / 炎半径 "},{"score":{"name":"@s","objective":"MKPower"}},{"text":" / "},{"score":{"name":"@s","objective":"MKDuration"}},{"text":"秒"}]
execute unless score @s MKFire matches 20.. run tellraw @s {"text":"バフ・デバフ: なし / 命中時: 火・風elementを各+1","color":"gray"}
execute if score @s MKFire matches 20.. unless score @s MKWind matches 20.. run tellraw @s {"text":"バフ・デバフ: なし / 命中時: 火・風elementを各+1","color":"gray"}
execute if score @s MKFire matches 20.. if score @s MKWind matches 20.. unless score @s MKFire matches 40.. run tellraw @s {"text":"自己バフ: 火炎耐性30秒 / 敵デバフ: なし / 命中時: 火・風elementを各+1","color":"dark_red"}
execute if score @s MKFire matches 40.. if score @s MKWind matches 20.. unless score @s MKWind matches 40.. run tellraw @s {"text":"自己バフ: 火炎耐性30秒 / 敵デバフ: なし / 命中時: 火・風elementを各+1","color":"dark_red"}
execute if score @s MKFire matches 40.. if score @s MKWind matches 40.. run tellraw @s {"text":"自己バフ: 火炎耐性30秒 / 敵デバフ: 鈍足Iを3秒 / 命中時: 火・風elementを各+1","color":"dark_red"}
execute if score @s MKFire matches 70.. if score @s MKWind matches 70.. run tellraw @s {"text":"対象: 距離を問わず敵player全員","color":"dark_red"}
