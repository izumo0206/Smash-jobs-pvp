#1vs4ON/OFF

playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1

execute if score ステージ決め 1vs4Setting matches 2 run scoreboard players set ステージ決め 1vs4Setting 0

execute if score ステージ決め 1vs4Setting matches 1 run scoreboard players set ステージ決め 1vs4Setting 2

execute if score ステージ決め 1vs4Setting matches 0 run scoreboard players set ステージ決め 1vs4Setting 1

#看板
execute if score ステージ決め 1vs4Setting matches 1 at @e[tag=Karioki1vs4Setting] run data merge block ~ ~2 ~ {front_text:{messages:['',{text:'タスクは有効です'},'','']},is_waxed:true}
execute if score ステージ決め 1vs4Setting matches 2 at @e[tag=Karioki1vs4Setting] run data merge block ~ ~2 ~ {front_text:{messages:['',{text:'タスクは無効です'},'','']},is_waxed:true}

#処理
execute if score ステージ決め 1vs4Setting matches 1 run scoreboard players set ステージ決め 1vs4 1

execute if score ステージ決め 1vs4Setting matches 2 run scoreboard players set ステージ決め 1vs4 2

function main:mode/1vs4/1vs4_amasuta

function main:mode/1vs4/task
