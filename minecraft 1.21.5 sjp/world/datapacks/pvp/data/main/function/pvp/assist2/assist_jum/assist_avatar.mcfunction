#AssistAvatar


#画面表示
execute if entity @a[tag=Assist2,scores={Kirikae=6}] as @a[tag=Assist2,scores={Kirikae=6}] run title @s actionbar [{"text":"分身の杖 mp:100 ct:150 cd:100 ra:6 ","color":"dark_gray"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"},{"text":"   分身:  ","color":"black"},{"score":{"name":"*","objective":"avatarcount2"},"color":"dark_purple"}]

#分身の杖実行
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=150..,AssistMP=100..,Kirikae=6,avatarcount2=..20},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{display:{Name:'{"text":"アシストの杖"}',Lore:['{"text":"ジャンプで能力変化"}']}}}}] run function main:pvp/assist2/assist_jum/assist_avatar_sub