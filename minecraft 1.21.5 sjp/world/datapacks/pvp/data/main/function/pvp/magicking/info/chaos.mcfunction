function main:pvp/magicking/spell/chaos/calculate
tellraw @s ["",{"text":"選択: 混沌の魔法","color":"dark_purple","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT 20 / CD 100 / 光・闇段階 "},{"score":{"name":"@s","objective":"MKChaosN"}},{"text":" / 最終効果 "},{"score":{"name":"@s","objective":"MKUltimate"}}]
execute if score @s MKUltimate matches 1.. run tellraw @s {"text":"効果: 相手player全員をkill（従来の混沌効果は発生しない）","color":"dark_purple"}
execute if score @s MKUltimate matches 0 unless score @s MKLight matches 10.. run tellraw @s {"text":"効果: なし","color":"gray"}
execute if score @s MKUltimate matches 0 if score @s MKLight matches 10.. unless score @s MKDark matches 10.. run tellraw @s {"text":"効果: なし","color":"gray"}
execute if score @s MKUltimate matches 0 if score @s MKLight matches 10.. if score @s MKDark matches 10.. unless score @s MKLight matches 20.. run tellraw @s {"text":"効果: 全playerからランダム1人へ5ダメージ","color":"dark_purple"}
execute if score @s MKUltimate matches 0 if score @s MKLight matches 10.. if score @s MKDark matches 10.. if score @s MKLight matches 20.. unless score @s MKDark matches 20.. run tellraw @s {"text":"効果: 全playerからランダム1人へ5ダメージ","color":"dark_purple"}
execute if score @s MKUltimate matches 0 if score @s MKLight matches 20.. if score @s MKDark matches 20.. unless score @s MKLight matches 30.. run tellraw @s {"text":"効果: ランダム1人へ5ダメージ＋ランダムelementを5獲得","color":"dark_purple"}
execute if score @s MKUltimate matches 0 if score @s MKLight matches 20.. if score @s MKDark matches 20.. if score @s MKLight matches 30.. unless score @s MKDark matches 30.. run tellraw @s {"text":"効果: ランダム1人へ5ダメージ＋ランダムelementを5獲得","color":"dark_purple"}
execute if score @s MKUltimate matches 0 if score @s MKLight matches 30.. if score @s MKDark matches 30.. run tellraw @s {"text":"効果: 5ダメージ＋element5＋位置交換／即死／低重力10秒／巨大化10秒／自己縮小10秒からランダム1つ","color":"dark_purple"}
