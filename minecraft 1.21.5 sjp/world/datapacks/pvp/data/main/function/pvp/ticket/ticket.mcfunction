#チケット リピート


#チケット計算 呼び出し
execute if entity @a[scores={death=1..}] run function main:pvp/ticket/ticket_sub



#勝利判定

#判定呼び出し
execute unless score チケットの数判定用 TicketValueSet matches 0 if score 赤チーム ticket matches ..0 run function main:pvp/ticket/ticket_finish
execute unless score チケットの数判定用 TicketValueSet matches 0 if score 青チーム ticket matches ..0 run function main:pvp/ticket/ticket_finish