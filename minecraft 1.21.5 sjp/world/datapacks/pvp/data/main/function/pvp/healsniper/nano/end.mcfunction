#ナノブーストの終了（実行者：対象の味方）
scoreboard players set @s HsNano 0
attribute @s minecraft:scale modifier remove main:hs_nano
attribute @s minecraft:entity_interaction_range modifier remove main:hs_nano
execute at @s run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.2
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.4 0.6 0.4 0.02 15 force @a
