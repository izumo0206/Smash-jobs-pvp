scoreboard players add #thunder_targets MKCalc 1
summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute if score #thunder_dark MKCalc matches 1 run effect give @s minecraft:darkness 3 0 true
