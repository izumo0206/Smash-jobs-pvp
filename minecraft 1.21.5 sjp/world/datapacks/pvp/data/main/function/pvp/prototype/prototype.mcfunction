#プロトタイプ
#スキル
#画面表示
execute if entity @a[tag=Prototype] as @a[tag=Prototype] run title @s actionbar [{"text":"覚醒","color":"dark_gray"},{"text":"   変異:  ","color":"black"},{"score":{"name":"*","objective":"prototype_totalkill"},"color":"dark_purple"}]

#アイテム配布
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=0..}] at @s run function main:pvp/prototype/item

#狂乱
execute as @a[tag=Prototype,scores={proto_Kyouran=1..}] at @s run function main:pvp/prototype/kyouran
#再生
execute as @a[tag=Prototype,scores={proto_Saisei=1..}] at @s run function main:pvp/prototype/saisei
#粘液
execute as @a[tag=Prototype,scores={proto_Neneki=1..}] at @s run function main:pvp/prototype/neneki

#棘飛
execute as @a[tag=Prototype,scores={proto_Sihi=1..}] at @s run function main:pvp/prototype/sihi

#エフェクト
execute at @e[type=armor_stand,tag=protosihi] run particle minecraft:item_slime ~ ~1 ~ 0.1 0.1 0.1 1 10

execute as @e[type=armor_stand,tag=protosihi] at @s run tp ^ ^ ^2.0

execute at @a[tag=Prototype] run kill @e[distance=15..,tag=protosihi]

execute at @e[type=armor_stand,tag=protosihi] run damage @p[distance=..1] 10 minecraft:player_attack by @a[tag=Prototype,limit=1]