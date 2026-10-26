#持っている武器で移動速度を変える（実行者：ゲリラ兵。増減は config の param.<銃>.weight）
scoreboard players set #w GuCalc 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run scoreboard players set #w GuCalc 1
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"ak"}] run scoreboard players set #w GuCalc 2
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"gl"}] run scoreboard players set #w GuCalc 3
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"p90"}] run scoreboard players set #w GuCalc 4
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"tec"}] run scoreboard players set #w GuCalc 5
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run scoreboard players set #w GuCalc 6
execute if score #w GuCalc matches 0 if entity @s[tag=GuWt] run function main:pvp/guerrilla/body/weight_clear
execute if score #w GuCalc matches 1 unless entity @s[tag=GuW1] run function main:pvp/guerrilla/body/weight_set {t:"GuW1",k:"sg"}
execute if score #w GuCalc matches 2 unless entity @s[tag=GuW2] run function main:pvp/guerrilla/body/weight_set {t:"GuW2",k:"ak"}
execute if score #w GuCalc matches 3 unless entity @s[tag=GuW3] run function main:pvp/guerrilla/body/weight_set {t:"GuW3",k:"gl"}
execute if score #w GuCalc matches 4 unless entity @s[tag=GuW4] run function main:pvp/guerrilla/body/weight_set {t:"GuW4",k:"p90"}
execute if score #w GuCalc matches 5 unless entity @s[tag=GuW5] run function main:pvp/guerrilla/body/weight_set {t:"GuW5",k:"tec"}
execute if score #w GuCalc matches 6 unless entity @s[tag=GuW6] run function main:pvp/guerrilla/body/weight_set {t:"GuW6",k:"rv"}
