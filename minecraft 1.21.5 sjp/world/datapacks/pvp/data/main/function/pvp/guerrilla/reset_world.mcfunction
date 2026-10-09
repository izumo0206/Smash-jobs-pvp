#上級ゲリラ兵が出したentity・表示の後片付け（試合終了時）
kill @e[type=marker,tag=GuNadeM]
kill @e[type=marker,tag=GuStrike]
kill @e[type=marker,tag=GuCarpet]
kill @e[type=marker,tag=GuFire]
kill @e[type=marker,tag=GuHitPt]
execute as @e[type=ender_dragon,tag=GuDragon] at @s run tp @s ~ -300 ~
kill @e[type=ender_dragon,tag=GuDragon]
execute as @e[type=creeper,tag=GuBomb] at @s run tp @s ~ -300 ~
kill @e[type=creeper,tag=GuBomb]
kill @e[type=item,tag=GuDrop]
execute as @e[type=item] if items entity @s contents *[minecraft:custom_data~{gu_item:1b}] run kill @s
bossbar remove main:gu_nuke
scoreboard players set #nuke GuCalc 0
kill @e[type=marker,tag=GuDbgPos]
