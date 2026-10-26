#AssistHallucinations


#画面表示
execute if entity @a[tag=Assist2,scores={Kirikae=5}] as @a[tag=Assist2,scores={Kirikae=5}] run title @s actionbar [{"text":"幻覚の杖 mp:150 ct:30 cd:100","color":"black"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"AssistMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"AssistCooldown"},"color":"dark_purple"}]

#幻覚の杖実行
execute as @a[tag=Assist2,scores={AssistCooldown=..0,sneak=30..,AssistMP=150..,Kirikae=5},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run function main:pvp/assist2/assist_jum/assist_hallucinations_sub