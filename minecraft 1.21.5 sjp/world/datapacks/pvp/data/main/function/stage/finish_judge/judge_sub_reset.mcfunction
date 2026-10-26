#強制終了 キャンセル

#表示
tellraw @a [{"text":"ゲームの強制終了がキャンセルされました","color":"light_purple"}]

#キャンセル実行者のタグ剥奪
tag @s remove agreement

#スケジュールリセット
schedule clear main:stage/finish_judge/judge_sub