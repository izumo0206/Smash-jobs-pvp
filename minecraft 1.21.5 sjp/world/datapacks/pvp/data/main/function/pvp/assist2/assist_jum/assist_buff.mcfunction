#AssistBuff


#画面表示
execute if entity @a[tag=Assist2,scores={Kirikae=6}] as @a[tag=Assist2,scores={Kirikae=6}] run title @s actionbar [{"text":"  応援の杖 mp:200 ct:100 cd:200","color":"green"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"}]

#応援の杖実行
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=100..,AssistMP=200..,Kirikae=6},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run function main:pvp/assist2/assist_jum/assist_buff_sub