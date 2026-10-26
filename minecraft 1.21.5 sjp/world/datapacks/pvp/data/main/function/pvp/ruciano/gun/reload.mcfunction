#リロード開始（装弾数が最大ならリロードしない、リロード中なら重複しない）
execute if score @s RcReload matches 1.. run return 0
execute if score @s RcAmmo matches 8.. run return 0
scoreboard players set @s RcReload 50
playsound minecraft:item.crossbow.loading_start player @a ~ ~ ~ 0.8 1.2
