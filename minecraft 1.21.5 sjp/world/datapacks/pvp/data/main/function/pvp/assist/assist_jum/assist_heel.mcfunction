#AssistHeel


#画面表示
execute if entity @a[tag=Assist,scores={Kirikae=0}] as @a[tag=Assist,scores={Kirikae=0}] run title @s actionbar [{"text":"回復の杖 mp:50 ct:30 cd:200 ","color":"light_purple"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"}]

#風の杖実行
execute as @a[tag=Assist,scores={AssistCooldown=..0,sneak=30..,AssistMP=50..,Kirikae=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run function main:pvp/assist/assist_jum/assist_heel_sub