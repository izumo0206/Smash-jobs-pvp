#矢回収


#画面表示
execute if entity @a[tag=Hunter] as @a[tag=Hunter,scores={Jump=0}] run title @s actionbar [{"text":"毒の矢回収 ct:200 ","color":"green"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]

#画面表示
execute if entity @a[tag=Hunter] as @a[tag=Hunter,scores={Jump=1}] run title @s actionbar [{"text":"弱化の矢回収 ct:200 ","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]

#画面表示
execute if entity @a[tag=Hunter] as @a[tag=Hunter,scores={Jump=2}] run title @s actionbar [{"text":"麻痺の矢回収 ct:200 ","color":"yellow"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]

#矢回収実行
execute as @a[tag=Hunter,scores={sneak=200..}] run function main:pvp/hunter/hunter_allow_sub