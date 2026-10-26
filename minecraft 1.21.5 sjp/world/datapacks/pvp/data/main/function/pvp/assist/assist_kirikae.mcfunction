#スコアボード
execute as @a[tag=Assist,scores={Jump=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"魔力の杖"}}}] run scoreboard players add @a[tag=Assist] Kirikae 1

scoreboard players set @a[tag=Assist] Jump 0