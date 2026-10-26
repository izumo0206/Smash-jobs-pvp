function main:pvp/magicking/spell/dark/calculate
scoreboard players operation @s MKPower = @s MKLevel
scoreboard players add @s MKPower 1
scoreboard players set @s MKCount 1
execute if score @s MKDark matches 40..69 run scoreboard players set @s MKCount 2
execute if score @s MKDark matches 70.. run scoreboard players set @s MKCount -1
tellraw @s ["",{"text":"選択: 闇の魔法","color":"dark_gray","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 鈍足Lv "},{"score":{"name":"@s","objective":"MKPower"}},{"text":" / "},{"score":{"name":"@s","objective":"MKDuration"}},{"text":"秒 / 対象 "},{"score":{"name":"@s","objective":"MKCount"}},{"text":"（-1は敵全員）"}]
execute if score @s MKDark matches ..19 run tellraw @s {"text":"敵デバフ: 鈍足のみ / 闇獲得: 8m内に敵playerがいなければ+1","color":"dark_gray"}
execute if score @s MKDark matches 20..69 run tellraw @s {"text":"敵デバフ: 鈍足・暗闇を各5秒 / 闇獲得: 8m内に敵playerがいなければ+1","color":"dark_gray"}
execute if score @s MKDark matches 70.. run tellraw @s {"text":"敵デバフ: 敵player全員へ鈍足・暗闇・跳躍上昇200を各5秒 / 闇獲得: 8m内に敵playerがいなければ+1","color":"dark_gray"}
