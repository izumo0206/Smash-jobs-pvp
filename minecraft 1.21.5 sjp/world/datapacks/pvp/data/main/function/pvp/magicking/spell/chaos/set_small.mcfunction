execute unless score @s MKScaleTime matches 1.. store result score @s MKScaleOld run attribute @s minecraft:scale base get 1000
attribute @s minecraft:scale base set 0.1
scoreboard players set @s MKScaleTime 200
tellraw @s {"text":"[混沌] 自分のサイズが10秒間0.1になった。","color":"dark_purple"}
