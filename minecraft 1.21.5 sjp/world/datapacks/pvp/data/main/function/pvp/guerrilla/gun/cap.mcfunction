#実行者：被弾した相手。この射撃で既に与えたダメージ（GuShotDmg）と合わせて max_dmg を超えないよう hit.amount を削る
scoreboard players set #skip GuCalc 0
execute store result score #amt GuCalc run data get storage main:guerrilla hit.amount 10
scoreboard players operation #rem GuCalc = #maxd GuCalc
scoreboard players operation #rem GuCalc -= @s GuShotDmg
execute if score #rem GuCalc matches ..0 run return run scoreboard players set #skip GuCalc 1
execute if score #amt GuCalc > #rem GuCalc run scoreboard players operation #amt GuCalc = #rem GuCalc
scoreboard players operation @s GuShotDmg += #amt GuCalc
execute store result storage main:guerrilla hit.amount double 0.1 run scoreboard players get #amt GuCalc
