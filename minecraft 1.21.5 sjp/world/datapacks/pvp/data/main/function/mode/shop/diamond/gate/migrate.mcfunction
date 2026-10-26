#旧クールダウンArmor Standを座標アンカーへ移行する
execute if entity @e[type=armor_stand,tag=diacooldownred] if score #red ShopGateCD matches 0 run scoreboard players set #red ShopGateCD 3000
execute if entity @e[type=armor_stand,tag=diacooldownmid] if score #mid ShopGateCD matches 0 run scoreboard players set #mid ShopGateCD 3000
execute if entity @e[type=armor_stand,tag=diacooldownblue] if score #blue ShopGateCD matches 0 run scoreboard players set #blue ShopGateCD 3000

tag @e[type=armor_stand,tag=diacooldownred] add diared
tag @e[type=armor_stand,tag=diacooldownmid] add diamid
tag @e[type=armor_stand,tag=diacooldownblue] add diablue
tag @e[type=armor_stand,tag=diacooldownred] add CoinGateCooldown
tag @e[type=armor_stand,tag=diacooldownmid] add CoinGateCooldown
tag @e[type=armor_stand,tag=diacooldownblue] add CoinGateCooldown
tag @e[type=armor_stand,tag=diacooldownred] remove diacooldownred
tag @e[type=armor_stand,tag=diacooldownmid] remove diacooldownmid
tag @e[type=armor_stand,tag=diacooldownblue] remove diacooldownblue

#既存の3種類のスポットtagと座標をそのままアンカーとして使用する
tag @e[type=armor_stand,tag=diared] add CoinGateAnchor
tag @e[type=armor_stand,tag=diamid] add CoinGateAnchor
tag @e[type=armor_stand,tag=diablue] add CoinGateAnchor
execute as @e[type=armor_stand,tag=CoinGateAnchor] run data merge entity @s {CustomNameVisible:0b,Invisible:1b,Marker:1b,NoGravity:1b}

#クールダウン中のアンカーは回収対象tagを持たない
execute if score #red ShopGateCD matches 1.. run tag @e[tag=CoinGateAnchor,tag=diared] add CoinGateCooldown
execute if score #red ShopGateCD matches 1.. run tag @e[tag=CoinGateAnchor,tag=diared] remove dia
execute if score #mid ShopGateCD matches 1.. run tag @e[tag=CoinGateAnchor,tag=diamid] add CoinGateCooldown
execute if score #mid ShopGateCD matches 1.. run tag @e[tag=CoinGateAnchor,tag=diamid] remove dia
execute if score #blue ShopGateCD matches 1.. run tag @e[tag=CoinGateAnchor,tag=diablue] add CoinGateCooldown
execute if score #blue ShopGateCD matches 1.. run tag @e[tag=CoinGateAnchor,tag=diablue] remove dia

#表示用text_displayをアンカーの1.5ブロック上へ1体だけ生成する
execute as @e[type=armor_stand,tag=CoinGateAnchor,tag=diared] at @s unless entity @e[type=text_display,tag=CoinGateDisplayRed,distance=..2] run summon text_display ~ ~1.5 ~ {Tags:["CoinGateDisplay","CoinGateDisplayRed"],billboard:"center",background:2130706432,shadow:1b,see_through:1b,line_width:200,view_range:32.0f,text:[{text:'◆ コインゲート ◆',color:'green',bold:1b},{text:'\n回収可能',color:'green'}]}
execute as @e[type=armor_stand,tag=CoinGateAnchor,tag=diamid] at @s unless entity @e[type=text_display,tag=CoinGateDisplayMid,distance=..2] run summon text_display ~ ~1.5 ~ {Tags:["CoinGateDisplay","CoinGateDisplayMid"],billboard:"center",background:2130706432,shadow:1b,see_through:1b,line_width:200,view_range:32.0f,text:[{text:'◆ コインゲート ◆',color:'green',bold:1b},{text:'\n回収可能',color:'green'}]}
execute as @e[type=armor_stand,tag=CoinGateAnchor,tag=diablue] at @s unless entity @e[type=text_display,tag=CoinGateDisplayBlue,distance=..2] run summon text_display ~ ~1.5 ~ {Tags:["CoinGateDisplay","CoinGateDisplayBlue"],billboard:"center",background:2130706432,shadow:1b,see_through:1b,line_width:200,view_range:32.0f,text:[{text:'◆ コインゲート ◆',color:'green',bold:1b},{text:'\n回収可能',color:'green'}]}
