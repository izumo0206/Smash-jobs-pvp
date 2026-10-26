#タグ付け
tag @s add First

#スコアボード宣言
scoreboard objectives add FirstTime dummy

#スポーン場所からのtp
execute at @e[tag=FirstContact] run tp @s 10001 -4 10000

#タイトル表示
title @s title {"text":"ようこそ","color":"white"}
title @s subtitle {"text":"～職業PVPワールドへ～","color":"white"}