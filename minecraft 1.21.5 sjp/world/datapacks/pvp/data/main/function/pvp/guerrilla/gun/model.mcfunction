#リロード中・コッキング中は、持っている銃の見た目を切り替える。リロード中は耐久値バーで進み具合を表示（実行者：ゲリラ兵）
scoreboard players set #alt GuCalc 0
scoreboard players set #rl GuCalc 0
#リロード中（リロードしている銃を持っているとき）
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 1 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run function main:pvp/guerrilla/gun/rl_on
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 2 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"ak"}] run function main:pvp/guerrilla/gun/rl_on
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 3 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"gl"}] run function main:pvp/guerrilla/gun/rl_on
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 4 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"p90"}] run function main:pvp/guerrilla/gun/rl_on
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 5 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"tec"}] run function main:pvp/guerrilla/gun/rl_on
execute if score @s GuReload matches 1.. if score @s GuReloadW matches 6 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run function main:pvp/guerrilla/gun/rl_on
#コッキング中（単発銃の次弾までの間：ショットガンのポンプ、リボルバーの撃鉄）
execute if score @s GuCool matches 1.. if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run scoreboard players set #alt GuCalc 1
execute if score @s GuCool matches 1.. if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run scoreboard players set #alt GuCalc 1
execute if score #alt GuCalc matches 1 unless items entity @s weapon.mainhand *[minecraft:custom_data~{gu_alt:1b}] run function main:pvp/guerrilla/gun/model_alt
execute if score #alt GuCalc matches 0 if items entity @s weapon.mainhand *[minecraft:custom_data~{gu_alt:1b}] run function main:pvp/guerrilla/gun/model_normal
#リロードの進み具合（耐久値バーがたまっていく）
execute if score #rl GuCalc matches 1 run function main:pvp/guerrilla/gun/reload_bar
