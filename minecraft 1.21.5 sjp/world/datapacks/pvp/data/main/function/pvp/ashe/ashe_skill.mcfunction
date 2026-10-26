#本回収


#画面表示
execute if entity @a[tag=Ashe] as @a[tag=Ashe] run title @s actionbar [{"text":"スキルリチャージ ct:200 ","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]

#本回収実行
execute as @a[tag=Ashe,scores={sneak=200..}] run function main:pvp/ashe/ashe_skill_sub