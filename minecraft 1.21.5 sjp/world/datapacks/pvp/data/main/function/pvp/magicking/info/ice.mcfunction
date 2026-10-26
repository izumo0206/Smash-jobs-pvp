function main:pvp/magicking/spell/ice/calculate
tellraw @s ["",{"text":"選択: 氷の魔法","color":"aqua","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 検知 "},{"score":{"name":"@s","objective":"MKRange"}},{"text":"m / 粉雪5秒"}]
execute unless score @s MKWater matches 20.. run tellraw @s {"text":"敵デバフ: 粉雪3×3×3へ5秒拘束 / 命中時: 水・土elementを各+1","color":"aqua"}
execute if score @s MKWater matches 20.. unless score @s MKEarth matches 20.. run tellraw @s {"text":"敵デバフ: 粉雪3×3×3へ5秒拘束 / 命中時: 水・土elementを各+1","color":"aqua"}
execute if score @s MKWater matches 20.. if score @s MKEarth matches 20.. run tellraw @s {"text":"敵デバフ: 粉雪3×3×3へ5秒拘束・鈍足Xを5秒 / 命中時: 水・土elementを各+1","color":"aqua"}
execute if score @s MKWater matches 70.. if score @s MKEarth matches 70.. run tellraw @s {"text":"対象: 距離を問わず敵player全員","color":"aqua"}
