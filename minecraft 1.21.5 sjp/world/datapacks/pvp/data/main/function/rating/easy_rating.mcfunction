#レートシステムの変更を受け付けるところ

playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1

execute if score ステージ決め RatingSetting matches 2 run scoreboard players set ステージ決め RatingSetting 0

execute if score ステージ決め RatingSetting matches 1 run scoreboard players set ステージ決め RatingSetting 2

execute if score ステージ決め RatingSetting matches 0 run scoreboard players set ステージ決め RatingSetting 1

#看板
execute if score ステージ決め RatingSetting matches 1 at @e[tag=KariokiRateSetting] run data merge block ~ ~2 ~ {front_text:{messages:[["現在の"],["レートシステム"],["変動"],""]},is_waxed:1}
execute if score ステージ決め RatingSetting matches 2 at @e[tag=KariokiRateSetting] run data merge block ~ ~2 ~ {front_text:{messages:[["現在の"],["レートシステム"],["固定"],""]},is_waxed:1}