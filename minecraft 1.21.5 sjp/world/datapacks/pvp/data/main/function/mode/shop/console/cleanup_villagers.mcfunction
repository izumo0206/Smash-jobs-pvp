#ショップ用Armor Standの2ブロック以内にいる旧商人だけを除去する
execute at @e[type=minecraft:armor_stand,tag=KousanoShop] run kill @e[type=minecraft:villager,distance=..2]
execute at @e[type=minecraft:armor_stand,tag=SemainoShop] run kill @e[type=minecraft:villager,distance=..2]
execute at @e[type=minecraft:armor_stand,tag=BindnoShop] run kill @e[type=minecraft:villager,distance=..2]
