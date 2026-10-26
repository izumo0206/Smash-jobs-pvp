#スコアボード
execute as @a[tag=Assist2,scores={Jump=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"魔力の杖"}}}] run scoreboard players add @a[tag=Assist2] Kirikae 1

scoreboard players set @a[tag=Assist2] Jump 0