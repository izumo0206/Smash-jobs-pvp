#死神の一時状態を解除する（実行者：対象プレイヤー）
clear @s *[minecraft:custom_data~{rc_item:1b}]
scoreboard players set @s RcAmmo 0
scoreboard players set @s RcReload 0
scoreboard players set @s RcCool 0
scoreboard players set @s RcUse 0
