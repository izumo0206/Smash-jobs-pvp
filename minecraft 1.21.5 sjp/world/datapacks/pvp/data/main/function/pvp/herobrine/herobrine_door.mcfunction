#真実の扉

#画面表示
execute if entity @a[tag=Herobrine] as @a[tag=Herobrine] run title @s actionbar [{"text":"真実の扉 ct:100 ","color":"dark_aqua"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]

#スキル実行
execute as @a[tag=Herobrine,scores={sneak=100..}] run function main:pvp/herobrine/herobrine_door_sub