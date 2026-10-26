function main:pvp/magicking/spell/light/calculate
scoreboard players set @s MKCount 1
execute if score @s MKLight matches 20..69 run scoreboard players set @s MKCount 2
execute if score @s MKLight matches 70.. run scoreboard players set @s MKCount -1
tellraw @s ["",{"text":"選択: 光の魔法","color":"yellow","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 持続 "},{"score":{"name":"@s","objective":"MKDuration"}},{"text":"秒 / 対象数 "},{"score":{"name":"@s","objective":"MKCount"}},{"text":"（-1は敵全員）"}]
execute if score @s MKLight matches ..49 run tellraw @s {"text":"敵デバフ: 発光 / 自己バフ・回復: なし / 光獲得: 8m内に敵playerがいなければ+1","color":"yellow"}
execute if score @s MKLight matches 50..69 run tellraw @s {"text":"敵デバフ: 発光 / 自己バフ: 透明化を10秒 / 光獲得: 8m内に敵playerがいなければ+1","color":"yellow"}
execute if score @s MKLight matches 70.. run tellraw @s {"text":"敵デバフ: 敵player全員を発光 / 自己バフ: 透明化10秒・体力20回復 / 光獲得: 8m内に敵playerがいなければ+1","color":"yellow"}
