#source tickを切り上げ秒へ変換し、分・秒・表示色をstorageへ入れる
scoreboard players operation #totalSeconds ShopGateCD = #source ShopGateCD
scoreboard players add #totalSeconds ShopGateCD 19
scoreboard players operation #totalSeconds ShopGateCD /= #20 ShopGateCD
scoreboard players operation #minutes ShopGateCD = #totalSeconds ShopGateCD
scoreboard players operation #minutes ShopGateCD /= #60 ShopGateCD
scoreboard players operation #seconds ShopGateCD = #totalSeconds ShopGateCD
scoreboard players operation #seconds ShopGateCD %= #60 ShopGateCD
execute store result storage main:shop_gate display.minutes int 1 run scoreboard players get #minutes ShopGateCD
execute store result storage main:shop_gate display.seconds int 1 run scoreboard players get #seconds ShopGateCD
execute if score #totalSeconds ShopGateCD matches 61.. run data modify storage main:shop_gate display.color set value "red"
execute if score #totalSeconds ShopGateCD matches 1..60 run data modify storage main:shop_gate display.color set value "yellow"
