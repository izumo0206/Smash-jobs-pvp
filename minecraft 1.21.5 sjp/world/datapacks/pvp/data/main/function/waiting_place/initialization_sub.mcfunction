#完全初期化 キャンセル


#表示
tellraw @a {"text":"5秒以内に初期化ボタンが\n押されなかったため\n安全装置が作動しました","color":"light_purple"}

#ボタン 看板消す
setblock 4998 1 5017 minecraft:iron_block destroy
setblock 4998 2 5017 minecraft:iron_block destroy