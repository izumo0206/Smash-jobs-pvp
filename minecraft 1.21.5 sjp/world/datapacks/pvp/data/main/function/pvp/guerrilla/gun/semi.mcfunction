#単発銃（実行者：発射要求 GuReq を持つゲリラ兵）。持っている銃で振り分け、単発銃以外なら要求を捨てる
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run return run function main:pvp/guerrilla/gun/w/sg
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"tec"}] run return run function main:pvp/guerrilla/gun/w/tec
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run return run function main:pvp/guerrilla/gun/w/rv
tag @s remove GuReq
