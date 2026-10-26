function main:pvp/magicking/spell/fire/calculate
tellraw @s ["",{"text":"選択: 火の魔法","color":"red","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 火球威力 "},{"score":{"name":"@s","objective":"MKPower"}}]
execute if score @s MKFire matches ..19 run tellraw @s {"text":"追加効果: なし / 火獲得: 発動時8m内に敵playerがいれば+1","color":"gray"}
execute if score @s MKFire matches 20..39 run tellraw @s {"text":"追加効果: 8m内の敵playerへ燃焼5 / 火獲得: 発動時8m内に敵playerがいれば+1","color":"red"}
execute if score @s MKFire matches 40..69 run tellraw @s {"text":"追加効果: 8m内の敵playerへ燃焼5、自身へ耐性Vを2秒 / 火獲得: 発動時8m内に敵playerがいれば+1","color":"red"}
execute if score @s MKFire matches 70.. run tellraw @s {"text":"追加効果: 8m内の敵entityへ燃焼5、自身へ耐性Vを2秒 / 火獲得: 発動時8m内に敵playerがいれば+1","color":"red"}
