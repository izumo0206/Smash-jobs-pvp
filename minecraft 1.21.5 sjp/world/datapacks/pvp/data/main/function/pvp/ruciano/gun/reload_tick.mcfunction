#リロード進行（実行者：死神）
scoreboard players remove @s RcReload 1
execute if score @s RcReload matches 1.. run return 0
#リロード完了（装弾数を8にセット）
scoreboard players set @s RcAmmo 8
scoreboard players set @s RcReload 0
playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 0.8 1.2
