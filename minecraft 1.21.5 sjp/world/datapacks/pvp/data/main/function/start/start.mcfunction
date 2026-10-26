#ゲームスタート 未完成

#物理ボタンと自動開始による二重実行を防止
execute if data storage main:stage_start {running:1b} run return 0
execute if data storage main:stage_start {active:1b} unless data storage main:stage_start {authorized:1b} run return 0
data remove storage main:stage_start authorized
data modify storage main:stage_start running set value 1b
execute if data storage main:stage_start {configured:1b} run function main:stage/common_start/stop

#スタート
title @a title "スタート!"


#時間スタート 初期化
scoreboard players operation 時間 time = 時間設定 TimeValueSet
execute as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~3 minecraft:redstone_block

#チケット
#デス数
scoreboard players set @a death 0
#キル数
scoreboard players set @a killCount 0
#チケット演算スタート
execute unless score チケットの数判定用 TicketValueSet matches 0 as @e[tag=CentralControlSystem] at @s run setblock ~1 ~ ~3 minecraft:redstone_block


#PVP関連
scoreboard players set @a AssistMP 300
scoreboard players set @a AssistCooldown 0
scoreboard players set @a BeasttamerMP 200
scoreboard players set @a BeasttamerCooldown 0
scoreboard players set @a WizardMP 100
scoreboard players set @a WizardCooldown 0
scoreboard players set @a sneak 0
scoreboard players set @a foodcd 0
gamemode adventure @a
gamemode spectator @a[tag=TeamSetSpectator]
#剣士
scoreboard players set @a shield 0
scoreboard players set @a shield_sub 0
scoreboard players set @a shieldCooldown 0
#スカウター
scoreboard players set @a ScouterSickle 0
scoreboard players set @a dameged 0
#魔法使い
scoreboard players set @a pulpunte0 0

#体力回復 エフェクトクリア
effect give @e[type=!minecraft:armor_stand] minecraft:instant_health 1 9
effect clear @e[type=!minecraft:armor_stand]

#ステージセット ちゅら
execute if score ステージ決め 1vs4Setting matches 1 run setblock -4876 2 5013 light_weighted_pressure_plate
execute if score ステージ決め 1vs4Setting matches 1 run setblock -5012 2 5013 light_weighted_pressure_plate
execute if score ステージ決め 1vs4Setting matches 1 run setblock -4876 1 5010 air
execute if score ステージ決め 1vs4Setting matches 1 run setblock -4876 1 5007 air
execute if score ステージ決め 1vs4Setting matches 1 run setblock -5012 1 5010 air
execute if score ステージ決め 1vs4Setting matches 1 run setblock -5012 1 5007 air

execute if score ステージ決め 1vs4Setting matches 2 run setblock -4876 2 5013 air
execute if score ステージ決め 1vs4Setting matches 2 run setblock -5012 2 5013 air

#味方の場所柱
setblock 10020 316 10013 redstone_block
