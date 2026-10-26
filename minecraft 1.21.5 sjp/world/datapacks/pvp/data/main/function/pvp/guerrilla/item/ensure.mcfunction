#初期装備（ショットガン）を常に1つにし、拾った武器の所持状態を同期する（実行者：ゲリラ兵）
execute store result score #c GuCalc run clear @s *[minecraft:custom_data~{gu:"sg"}] 0
execute if score #c GuCalc matches 2.. run clear @s *[minecraft:custom_data~{gu:"sg"}]
execute unless score #c GuCalc matches 1 run function main:pvp/guerrilla/item/give_sg
execute store result score #c GuCalc run clear @s *[minecraft:custom_data~{gu:"ak"}] 0
execute if score #c GuCalc matches 0 run scoreboard players set @s GuHasAk 0
execute store result score #c GuCalc run clear @s *[minecraft:custom_data~{gu:"gl"}] 0
execute if score #c GuCalc matches 0 run scoreboard players set @s GuHasGl 0
execute store result score #c GuCalc run clear @s *[minecraft:custom_data~{gu:"p90"}] 0
execute if score #c GuCalc matches 0 run scoreboard players set @s GuHasP90 0
execute store result score #c GuCalc run clear @s *[minecraft:custom_data~{gu:"tec"}] 0
execute if score #c GuCalc matches 0 run scoreboard players set @s GuHasTec 0
execute store result score #c GuCalc run clear @s *[minecraft:custom_data~{gu:"rv"}] 0
execute if score #c GuCalc matches 0 run scoreboard players set @s GuHasRv 0
