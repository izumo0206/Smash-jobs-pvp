#大規模爆風爆弾：カウントダウンの後、着弾で敵チームのプレイヤーが全員倒れる
execute if score #nuke GuCalc matches 1.. run return run tellraw @s {text:"大規模爆風爆弾はすでに発動中です",color:"red"}
item replace entity @s weapon.mainhand with minecraft:air
#200tickのカウントダウン + 100tickの爆発演出
scoreboard players set #nuke GuCalc 300
#発動した人（倒した記録用）とチームを記録
scoreboard players operation #nukeId GuCalc = @s GuID
scoreboard players set #nukeTeam GuCalc 0
execute if entity @s[team=Blue] run scoreboard players set #nukeTeam GuCalc 1
execute if entity @s[team=Red] run scoreboard players set #nukeTeam GuCalc 2
bossbar remove main:gu_nuke
bossbar add main:gu_nuke {text:"大規模爆風爆弾",color:"dark_red",bold:true}
bossbar set main:gu_nuke color red
bossbar set main:gu_nuke style notched_10
bossbar set main:gu_nuke max 200
bossbar set main:gu_nuke value 200
bossbar set main:gu_nuke players @a
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 0.6
execute as @a at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1 0.6
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 0.5
title @a subtitle [{selector:"@s"},{text:"が要請した",color:"gray"}]
title @a title {text:"大規模爆風爆弾",color:"dark_red",bold:true}
