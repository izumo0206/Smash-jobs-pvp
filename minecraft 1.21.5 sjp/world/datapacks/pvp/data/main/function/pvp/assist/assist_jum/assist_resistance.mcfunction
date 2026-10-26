#AssistResistance


#画面表示
execute if entity @a[tag=Assist,scores={Kirikae=2}] as @a[tag=Assist,scores={Kirikae=2}] run title @s actionbar [{"text":"鋼化の杖 mp:300 ct:5 cd:500 ","color":"gray"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"}]

#鋼化の杖実行
execute as @a[tag=Assist,scores={AssistCooldown=..0,sneak=5..,AssistMP=300..,Kirikae=2},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run function main:pvp/assist/assist_jum/assist_resistance_sub