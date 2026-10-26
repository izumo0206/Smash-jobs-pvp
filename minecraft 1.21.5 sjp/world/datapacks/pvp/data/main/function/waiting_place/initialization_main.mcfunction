#完全初期化 実行


#表示
tellraw @a {"text":"完全に初期化されました","color":"dark_red"}


#ボタン 看板消す
setblock 4998 1 5017 minecraft:iron_block destroy
setblock 4998 2 5017 minecraft:iron_block destroy


#スケジュール剥奪
schedule clear main:waiting_place/initialization_sub

#初期化
execute as @a run setworldspawn 10001 1 10000
clear @a
scoreboard objectives add progress dummy
scoreboard players set 進捗 progress 0
execute as @a run function main:first/first_set_value
execute as @a run function main:first/first_set
scoreboard players set 進捗 progress 0



tp @a 10001 1 10000 0 0