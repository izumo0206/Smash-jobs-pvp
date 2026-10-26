#macro実行中も@sは術者
$execute if entity @s[team=Blue] if entity @a[team=Red,gamemode=!spectator,distance=..$(range),limit=1] run scoreboard players set @s MKCount 1
$execute if entity @s[team=Red] if entity @a[team=Blue,gamemode=!spectator,distance=..$(range),limit=1] run scoreboard players set @s MKCount 1
$execute if entity @s[team=Blue] as @a[team=Red,gamemode=!spectator,distance=..$(range)] run damage @s $(power) minecraft:magic by @a[tag=MKDamageCaster,limit=1]
$execute if entity @s[team=Red] as @a[team=Blue,gamemode=!spectator,distance=..$(range)] run damage @s $(power) minecraft:magic by @a[tag=MKDamageCaster,limit=1]
$execute if score @s MKEarth matches 20..69 if entity @s[team=Blue] run effect give @a[team=Red,gamemode=!spectator,distance=..$(range)] minecraft:slowness 5 0 true
$execute if score @s MKEarth matches 20..69 if entity @s[team=Red] run effect give @a[team=Blue,gamemode=!spectator,distance=..$(range)] minecraft:slowness 5 0 true
$execute if score @s MKEarth matches 70.. if entity @s[team=Blue] run effect give @a[team=Red,gamemode=!spectator,distance=..$(range)] minecraft:slowness 5 2 true
$execute if score @s MKEarth matches 70.. if entity @s[team=Red] run effect give @a[team=Blue,gamemode=!spectator,distance=..$(range)] minecraft:slowness 5 2 true
$execute if score @s MKEarth matches ..39 run effect give @s minecraft:resistance $(duration) 0 true
$execute if score @s MKEarth matches 40.. run effect give @s minecraft:resistance $(duration) 2 true
execute if score @s MKCount matches 1.. run function main:pvp/magicking/element/add_earth
