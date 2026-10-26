#装備（スナイパー・麻酔銃・ナノブースト）を常に1つずつにする（実行者：回復スナイパー）
execute store result score #c HsCalc run clear @s *[minecraft:custom_data~{hs:"rifle"}] 0
execute if score #c HsCalc matches 2.. run clear @s *[minecraft:custom_data~{hs:"rifle"}]
execute unless score #c HsCalc matches 1 run function main:pvp/healsniper/item/give_rifle
execute store result score #c HsCalc run clear @s *[minecraft:custom_data~{hs:"dart"}] 0
execute if score #c HsCalc matches 2.. run clear @s *[minecraft:custom_data~{hs:"dart"}]
execute unless score #c HsCalc matches 1 run function main:pvp/healsniper/item/give_dart
#ナノブーストは手に入れている（HsNanoHave 1）間だけ1個持たせる
execute unless score @s HsNanoHave matches 1.. run clear @s *[minecraft:custom_data~{hs:"nano"}]
execute store result score #c HsCalc run clear @s *[minecraft:custom_data~{hs:"nano"}] 0
execute if score #c HsCalc matches 2.. run clear @s *[minecraft:custom_data~{hs:"nano"}]
execute if score @s HsNanoHave matches 1.. unless score #c HsCalc matches 1 run function main:pvp/healsniper/item/give_nano
