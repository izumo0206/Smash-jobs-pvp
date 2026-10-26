#通常の見た目に戻す（item/give_* の item_model と合わせる）
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"sg"}] run function main:pvp/guerrilla/gun/model_set {m:"minecraft:leather_horse_armor"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"ak"}] run function main:pvp/guerrilla/gun/model_set {m:"minecraft:iron_horse_armor"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"gl"}] run function main:pvp/guerrilla/gun/model_set {m:"minecraft:iron_horse_armor"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"p90"}] run function main:pvp/guerrilla/gun/model_set {m:"minecraft:golden_horse_armor"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"tec"}] run function main:pvp/guerrilla/gun/model_set {m:"minecraft:golden_horse_armor"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{gu:"rv"}] run function main:pvp/guerrilla/gun/model_set {m:"minecraft:diamond_horse_armor"}
