#強制終了 合意制


#すでに合意している人
#表示
execute unless score 終了合意判定 NumberOfPlayer matches ..0 run execute as @p run execute if entity @s[tag=agreement] run tellraw @s [{"selector":"@s"},{"text":"さんは\nすでに強制終了に合意しています\n","color":"red"},{"text":"現在、強制終了に合意している人は\n","color":"green"},{"selector":"@a[tag=agreement]"},{"text":"\nです"},{"text":"\nゲームを終了するのにあと\n","color":"green"},{"score":{"name":"終了合意判定","objective":"NumberOfPlayer"},"color":"yellow"},{"text":"人の合意が必要です","color":"green"}]


#終了合意してない人
#演算
execute as @p run execute unless entity @s[tag=agreement] run scoreboard players add 終了合意人数 NumberOfPlayer 1
execute as @p run execute unless entity @s[tag=agreement] run scoreboard players operation 終了合意判定 NumberOfPlayer = プレイヤーの人数 NumberOfPlayer
execute as @p run execute unless entity @s[tag=agreement] run scoreboard players operation 終了合意判定 NumberOfPlayer -= 終了合意人数 NumberOfPlayer
#表示
execute unless score 終了合意判定 NumberOfPlayer matches ..0 run execute as @p run execute unless entity @s[tag=agreement] run tellraw @a [{"text":"\n"},{"selector":"@s"},{"text":"さんが\n強制終了に合意しました\n","color":"green"},{"text":"これまでに、強制終了に合意した人は\n","color":"green"},{"selector":"@a[tag=agreement]"},{"text":"\nです","color":"green"},{"text":"\nゲームを終了するのにあと\n","color":"green"},{"score":{"name":"終了合意判定","objective":"NumberOfPlayer"},"color":"yellow"},{"text":"人の合意が必要です","color":"green"}]
execute as @p run execute unless entity @s[tag=agreement] run tag @s add agreement



#合意が一定人数に達したとき
execute if score 終了合意判定 NumberOfPlayer matches ..0 run tellraw @a [{"text":"5秒後にゲームは強制終了されます\n強制終了をキャンセルする場合は","color":"red"},{"text":"ここ","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/function main:stage/finish_judge/judge_sub_reset"},"hoverEvent":{"action":"show_text","contents":"クリックして強制終了をキャンセル"}}]
#..0のところをスコアボードにして変数にもできる
#スケジュール設定
execute if score 終了合意判定 NumberOfPlayer matches ..0 run schedule function main:stage/finish_judge/judge_sub 100t