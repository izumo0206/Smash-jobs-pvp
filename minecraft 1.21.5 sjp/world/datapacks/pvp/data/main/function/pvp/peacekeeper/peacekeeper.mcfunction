#ピースキーパー
scoreboard players remove @a[tag=Peacekeeper,scores={peacekeeperCD=1..}] peacekeeperCD 1

#アイテム
item replace entity @a[tag=Peacekeeper] container.0 with minecraft:light_blue_dye[custom_name="『少し黙れ』",lore=["CD160"]]
item replace entity @a[tag=Peacekeeper] container.1 with minecraft:green_dye[custom_name="『我が脚は疾風』",lore=["CD60"]]
item replace entity @a[tag=Peacekeeper] container.2 with minecraft:gray_dye[custom_name="『我が腕は鋼鉄』",lore=["CD120"]]
item replace entity @a[tag=Peacekeeper] container.3 with minecraft:pink_dye[custom_name="『傷よ癒えよ』",lore=["CD150"]]
item replace entity @a[tag=Peacekeeper] container.4 with minecraft:white_dye[custom_name="『剣を収めよ』",lore=["CD250"]]
item replace entity @a[tag=Peacekeeper] container.5 with minecraft:black_dye[custom_name="『死ね』",lore=["CD300"]]
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:green_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:pink_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:white_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:black_dye"}}]

#スキル
#画面表示
execute if entity @a[tag=Peacekeeper] as @a[tag=Peacekeeper] run title @s actionbar [{"text":"ジャッチメントワード","color":"dark_gray"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"peacekeeperCD"},"color":"dark_purple"}]


#少し黙れ
execute as @a[tag=Peacekeeper,scores={damare=1..,peacekeeperCD=..0}] at @s run function main:pvp/peacekeeper/damare
#我が脚は疾風
execute as @a[tag=Peacekeeper,scores={Sippuu=1..,peacekeeperCD=..0}] at @s run function main:pvp/peacekeeper/sippuu
#我が腕は鋼鉄
execute as @a[tag=Peacekeeper,scores={Koutetu=1..,peacekeeperCD=..0}] at @s run function main:pvp/peacekeeper/koutetu
#傷よ癒えよ
execute as @a[tag=Peacekeeper,scores={Ieyo=1..,peacekeeperCD=..0}] at @s run function main:pvp/peacekeeper/ieyo
#剣を収めよ
execute as @a[tag=Peacekeeper,scores={osameyo=1..,peacekeeperCD=..0}] at @s run function main:pvp/peacekeeper/osameyo
#死ね
execute as @a[tag=Peacekeeper,scores={Sine=1..,peacekeeperCD=..0}] at @s run function main:pvp/peacekeeper/sine