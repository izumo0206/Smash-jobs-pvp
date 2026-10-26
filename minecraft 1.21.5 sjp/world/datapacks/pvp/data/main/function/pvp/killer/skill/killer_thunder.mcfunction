#KillerThunder


#画面表示
execute if entity @a[tag=Killer] as @a[tag=Killer] run title @s actionbar [{"text":"雷の魔法 ct:15 cd:40","color":"yellow"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"KillerCooldown"},"color":"dark_purple"}]

#雷の魔法実行
execute as @a[tag=Killer,scores={KillerCooldown=..0,sneak=15..}] run function main:pvp/killer/skill/killer_thunder_sub