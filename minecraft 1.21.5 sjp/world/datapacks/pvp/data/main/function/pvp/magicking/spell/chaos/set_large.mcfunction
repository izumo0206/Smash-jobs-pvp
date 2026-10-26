execute unless score @s MKScaleTime matches 1.. store result score @s MKScaleOld run attribute @s minecraft:scale base get 1000
attribute @s minecraft:scale base set 1.5
scoreboard players set @s MKScaleTime 200
tellraw @a[tag=MKChaosCaster] ["",{"text":"[混沌] ","color":"dark_purple"},{"selector":"@s"},{"text":"のサイズが10秒間1.5になった。"}]
