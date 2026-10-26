tag @e[tag=shepherd_sheep,team=Blue,tag=!safe] add candidate_blue

scoreboard players set #min_age sheep_calc 2147483647
execute as @e[tag=candidate_blue] if score @s sheep_age < #min_age sheep_calc run scoreboard players operation #min_age sheep_calc = @s sheep_age

execute as @e[tag=candidate_blue] if score @s sheep_age = #min_age sheep_calc run tag @s add winner

tag @e[tag=winner,limit=1,sort=nearest] add safe

tag @e[tag=winner] remove winner
tag @e[tag=candidate_blue] remove candidate_blue