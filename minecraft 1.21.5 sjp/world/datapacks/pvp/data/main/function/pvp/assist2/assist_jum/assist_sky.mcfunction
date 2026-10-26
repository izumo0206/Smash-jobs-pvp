#AssistSky


#画面表示
execute if entity @a[tag=Assist2,scores={Kirikae=4}] as @a[tag=Assist2,scores={Kirikae=4}] run title @s actionbar [{"text":"  空の杖 mp:200 ct:30 cd:200","color":"aqua"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"}]

#空の杖実行
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=30..,AssistMP=200..,Kirikae=4},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run function main:pvp/assist2/assist_jum/assist_sky_sub