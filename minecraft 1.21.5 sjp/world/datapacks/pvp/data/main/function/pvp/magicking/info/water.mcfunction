function main:pvp/magicking/spell/water/calculate
tellraw @s ["",{"text":"選択: 水の魔法","color":"aqua","bold":true},{"text":"  MP "},{"score":{"name":"@s","objective":"MKCost"}},{"text":" / CT "},{"score":{"name":"@s","objective":"MKCast"}},{"text":" / CD "},{"score":{"name":"@s","objective":"MKCD"}},{"text":" / 水壁 "},{"score":{"name":"@s","objective":"MKRange"}},{"text":"×"},{"score":{"name":"@s","objective":"MKRange"}},{"text":" / "},{"score":{"name":"@s","objective":"MKDuration"}},{"text":"秒 / 回復 "},{"score":{"name":"@s","objective":"MKPower"}}]
tellraw @s {"text":"水壁効果: 矢・光の矢・トライデント・雪玉・卵・ポーション・火球・ウィンドチャージを消去 / 水獲得: 消去1件ごとに+1","color":"aqua"}
execute if score @s MKWater matches ..19 run tellraw @s {"text":"自己回復: なし","color":"gray"}
execute if score @s MKWater matches 20..69 run tellraw @s {"text":"自己回復: 即時回復I（体力4）","color":"aqua"}
execute if score @s MKWater matches 70.. run tellraw @s {"text":"自己回復: 即時回復II（体力8）","color":"aqua"}
