function main:pvp/magicking/spell/earth/calculate
tellraw @s ["",{"text":"選択: 土の魔法","color":"gold","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 威力 "},{"score":{"name":"@s","objective":"MKPower"}},{"text":" / 範囲 "},{"score":{"name":"@s","objective":"MKRange"}},{"text":"m / 耐性持続 "},{"score":{"name":"@s","objective":"MKDuration"}},{"text":"秒"}]
tellraw @s {"text":"視覚効果: 攻撃範囲の外周へcrit粒子を表示","color":"gold"}
execute if score @s MKEarth matches ..19 run tellraw @s {"text":"バフ: 自身へ耐性I / 敵デバフ: なし / 土獲得: 範囲内に敵playerがいれば+1","color":"gold"}
execute if score @s MKEarth matches 20..39 run tellraw @s {"text":"バフ: 自身へ耐性I / 敵デバフ: 鈍足Iを5秒 / 土獲得: 範囲内に敵playerがいれば+1","color":"gold"}
execute if score @s MKEarth matches 40..69 run tellraw @s {"text":"バフ: 自身へ耐性III / 敵デバフ: 鈍足Iを5秒 / 土獲得: 範囲内に敵playerがいれば+1","color":"gold"}
execute if score @s MKEarth matches 70.. run tellraw @s {"text":"バフ: 自身へ耐性III / 敵デバフ: 鈍足IIIを5秒 / 土獲得: 範囲内に敵playerがいれば+1","color":"gold"}
