#AssistLight



#画面表示
execute if entity @a[tag=Assist2,scores={Kirikae=1}] as @a[tag=Assist2,scores={Kirikae=1}] run title @s actionbar [{"text":"  光の杖 mp:100 ct:30 cd:80","color":"yellow"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"}]

#光の杖実行
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=30..,AssistMP=100..,Kirikae=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run function main:pvp/assist2/assist_jum/assist_light_sub