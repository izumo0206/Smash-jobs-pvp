execute if score チケットの数判定用 TicketValueSet matches 0 run tellraw @s {text:'チケット無効モードでは使用できません',color:'red'}
execute if score チケットの数判定用 TicketValueSet matches 0 run return 0
execute if entity @s[team=Red] run function main:mode/shop/console/special/ticket_device/red
execute if entity @s[team=Blue] run function main:mode/shop/console/special/ticket_device/blue
