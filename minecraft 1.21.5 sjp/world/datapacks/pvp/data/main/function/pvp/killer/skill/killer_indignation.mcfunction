#激動慷慨 


#画面表示
execute if entity @a[tag=Killer] as @a[tag=Killer] run title @s actionbar [{"text":"激動慷慨 ct:100 ","color":"red"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]

#スキル実行
execute as @a[tag=Killer,scores={sneak=100..}] run function main:pvp/killer/skill/killer_indignation_sub