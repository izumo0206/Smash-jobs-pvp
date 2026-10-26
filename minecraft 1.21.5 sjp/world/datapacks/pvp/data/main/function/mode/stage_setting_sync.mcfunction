# StageSettingに合わせて待機所の物理看板とステージ用レッドストーンを同期する。
execute if score ステージ決め StageSetting matches 1 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"ステージは"},"バインド",""]}}
execute if score ステージ決め StageSetting matches 2 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"ステージは"},"闘技場",""]}}
execute if score ステージ決め StageSetting matches 3 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"ステージは"},"ちゅらうみ",""]}}
execute if score ステージ決め StageSetting matches 4 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"ステージは"},"立体交差",""]}}
execute if score ステージ決め StageSetting matches 5 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"ステージは"},"高層ビル",""]}}
execute if score ステージ決め StageSetting matches 6 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"ステージは"},"デカライン高架下",""]}}
execute if score ステージ決め StageSetting matches 7 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"ステージは"},"SJP城",""]}}

# ステージ1・2は既存の開始系統を選び、3～7は両方を切る。
execute if score ステージ決め StageSetting matches 1 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~ minecraft:redstone_block
execute if score ステージ決め StageSetting matches 1 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~-1 air
execute if score ステージ決め StageSetting matches 2 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~-1 minecraft:redstone_block
execute if score ステージ決め StageSetting matches 2 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~ air
execute if score ステージ決め StageSetting matches 3..7 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~ air
execute if score ステージ決め StageSetting matches 3..7 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~-1 air
