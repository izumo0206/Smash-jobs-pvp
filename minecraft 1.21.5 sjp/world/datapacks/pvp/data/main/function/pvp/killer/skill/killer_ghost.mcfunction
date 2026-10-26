#KillerGhost


#画面表示
execute if entity @a[tag=Killer] as @a[tag=Killer] run title @s actionbar [{"text":"ゴースト ct:50 cd:250","color":"gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"KillerCooldown"},"color":"dark_purple"}]

#雷の魔法実行
execute as @a[tag=Killer,scores={KillerCooldown=..0,sneak=50..}] run function main:pvp/killer/skill/killer_ghost_sub