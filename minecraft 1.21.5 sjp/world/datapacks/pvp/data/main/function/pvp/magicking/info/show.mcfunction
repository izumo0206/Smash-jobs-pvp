tellraw @s ["",{"text":"=== 魔王 エレメント ===","color":"dark_purple","bold":true}]
tellraw @s ["",{"text":"火 ","color":"red"},{"score":{"name":"@s","objective":"MKFire"}},{"text":" / 水 ","color":"aqua"},{"score":{"name":"@s","objective":"MKWater"}},{"text":" / 風 ","color":"green"},{"score":{"name":"@s","objective":"MKWind"}}]
tellraw @s ["",{"text":"土 ","color":"gold"},{"score":{"name":"@s","objective":"MKEarth"}},{"text":" / 光 ","color":"yellow"},{"score":{"name":"@s","objective":"MKLight"}},{"text":" / 闇 ","color":"dark_gray"},{"score":{"name":"@s","objective":"MKDark"}}]
execute if score @s SelectJum matches 1 run function main:pvp/magicking/info/fire
execute if score @s SelectJum matches 2 run function main:pvp/magicking/info/water
execute if score @s SelectJum matches 3 run function main:pvp/magicking/info/wind
execute if score @s SelectJum matches 4 run function main:pvp/magicking/info/earth
execute if score @s SelectJum matches 5 run function main:pvp/magicking/info/light
execute if score @s SelectJum matches 6 run function main:pvp/magicking/info/dark
execute if score @s SelectJum matches 7 run function main:pvp/magicking/info/flame
execute if score @s SelectJum matches 8 run function main:pvp/magicking/info/thunder
execute if score @s SelectJum matches 9 run function main:pvp/magicking/info/ice
execute if score @s SelectJum matches 10 run function main:pvp/magicking/info/chaos
execute unless score @s SelectJum matches 1..10 run tellraw @s {"text":"魔法が選択されていません。","color":"gray"}
