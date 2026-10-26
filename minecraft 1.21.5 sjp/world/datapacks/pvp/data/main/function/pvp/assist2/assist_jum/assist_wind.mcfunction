#AssistWind


#画面表示
execute if entity @a[tag=Assist2,scores={Kirikae=3}] as @a[tag=Assist2,scores={Kirikae=3}] run title @s actionbar [{"text":"  風の杖 mp:100 ct:50 cd:100","color":"green"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"}]

#風の杖実行
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=50..,AssistMP=100..,Kirikae=3},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run function main:pvp/assist2/assist_jum/assist_wind_sub