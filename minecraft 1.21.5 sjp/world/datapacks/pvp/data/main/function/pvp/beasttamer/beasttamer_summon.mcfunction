#狼召喚


#画面表示
execute if entity @a[tag=Beasttamer] as @a[tag=Beasttamer] run title @s actionbar [{"text":"召喚 ct:120","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]

#狼の杖実行
execute as @a[tag=Beasttamer,scores={BeasttamerCooldown=..0,sneak=120..},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"狼の杖"}}}] run function main:pvp/beasttamer/beasttamer_summon_wolf

#グライアスの杖実行
execute as @a[tag=Beasttamer,scores={BeasttamerCooldown=..0,sneak=120..},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"グライアスの杖"}}}] run function main:pvp/beasttamer/beasttamer_summon_gra

#リューの杖実行
execute as @a[tag=Beasttamer,scores={BeasttamerCooldown=..0,sneak=120..},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"リューの杖"}}}] run function main:pvp/beasttamer/beasttamer_summon_ryu