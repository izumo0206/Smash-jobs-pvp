#AssistAvatar


#画面表示
execute if entity @a[tag=Assist,scores={Kirikae=6}] as @a[tag=Assist,scores={Kirikae=6}] run title @s actionbar [{"text":"分身の杖 mp:50 ct:50 cd:100 ","color":"dark_gray"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"},{"text":"   分身:  ","color":"black"},{"score":{"name":"*","objective":"avatarcount"},"color":"dark_purple"}]

#分身の杖実行
execute as @a[tag=Assist,scores={AssistCooldown=..0,sneak=50..,AssistMP=50..,Kirikae=6,avatarcount=..20},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run function main:pvp/assist/assist_jum/assist_avatar_sub