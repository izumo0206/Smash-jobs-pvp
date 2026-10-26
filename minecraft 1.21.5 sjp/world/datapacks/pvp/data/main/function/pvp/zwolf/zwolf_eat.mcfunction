
#画面表示
execute if entity @a[tag=Zwolf] as @a[tag=Zwolf] run title @s actionbar [{"text":"陰陽の饗宴 ct:15 cd:200 ","color":"red"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"zwolfCD"},"color":"dark_purple"}]

#スキル実行
execute as @a[tag=Zwolf,scores={sneak=15..,zwolfCD=..0,food=0..6}] run function main:pvp/zwolf/zwolf_eatday
execute as @a[tag=Zwolf,scores={sneak=15..,zwolfCD=..0,food=7..20}] run function main:pvp/zwolf/zwolf_eatnight