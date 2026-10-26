execute unless score @s MKGravityTime matches 1.. store result score @s MKGravityOld run attribute @s minecraft:gravity base get 1000
attribute @s minecraft:gravity base set 0.001
scoreboard players set @s MKGravityTime 200
tellraw @a[tag=MKChaosCaster] ["",{"text":"[混沌] ","color":"dark_purple"},{"selector":"@s"},{"text":"の重力が10秒間0.001になった。"}]
