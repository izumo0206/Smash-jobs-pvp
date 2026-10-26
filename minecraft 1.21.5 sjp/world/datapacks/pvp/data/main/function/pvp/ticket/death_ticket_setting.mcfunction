#チケット数の設定をボタン一つで済ませるところ（インパルス）

playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1

scoreboard players add チケットの数判定用 TicketValueSet 1

#現在最大チケット数を200に設定してるため11
scoreboard players set チケットの数判定用計算用 TicketValueSet 11

#現在、一回押すごとに20ずつチケットを増やしている
scoreboard players set チケットの数判定用計算用20 TicketValueSet 20

#チケットの演算
scoreboard players operation チケットの数判定用 TicketValueSet %= チケットの数判定用計算用 TicketValueSet
scoreboard players operation チケット数 TicketValueSet = チケットの数判定用 TicketValueSet
scoreboard players operation チケット数 TicketValueSet *= チケットの数判定用計算用20 TicketValueSet

#チケット数を各チームに代入
scoreboard players operation 赤チーム ticket = チケット数 TicketValueSet
scoreboard players operation 青チーム ticket = チケット数 TicketValueSet

#看板に書き込むコマンド
execute unless score チケットの数判定用 TicketValueSet matches 0 at @e[tag=KariokiTicket] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"チケット数は"},[{"score":{"name":"チケット数","objective":"TicketValueSet"}}],"に設定されています"]}}

#サイドバー設定
scoreboard objectives setdisplay sidebar ticket

#看板に書き込むコマンド（0の時）
execute if score チケットの数判定用 TicketValueSet matches 0 at @e[tag=KariokiTicket] run data merge block ~ ~2 ~ {front_text:{messages:[{"text":"現在の"},{"text":"チケット数は"},[{"score":{"name":"チケット数","objective":"TicketValueSet"}}],"に設定されています"]}}
#サイドバー設定(0の時)
execute if score チケットの数判定用 TicketValueSet matches 0 at @e[tag=KariokiTicket] run scoreboard objectives setdisplay sidebar